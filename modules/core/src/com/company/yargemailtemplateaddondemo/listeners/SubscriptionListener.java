package com.company.yargemailtemplateaddondemo.listeners;

import com.company.yargemailtemplateaddondemo.entity.Subscription;
import com.haulmont.addon.emailtemplates.builder.EmailTemplateBuilder;
import com.haulmont.addon.emailtemplates.core.EmailTemplatesAPI;
import com.haulmont.addon.emailtemplates.exceptions.ReportParameterTypeChangedException;
import com.haulmont.addon.emailtemplates.exceptions.TemplateNotFoundException;
import com.haulmont.cuba.core.EntityManager;
import com.haulmont.cuba.core.PersistenceTools;
import com.haulmont.cuba.core.global.EmailException;
import com.haulmont.cuba.core.global.Messages;
import com.haulmont.cuba.core.listener.BeforeInsertEntityListener;
import com.haulmont.cuba.core.listener.BeforeUpdateEntityListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

@Component("demo_SubscriptionListener")
public class SubscriptionListener implements BeforeInsertEntityListener<Subscription>, BeforeUpdateEntityListener<Subscription> {

    public static final String CREATED_TEMPLATE_CODE = "1";
    public static final String UPDATED_TEMPLATE_CODE = "2";

    private static final Logger LOG = LoggerFactory.getLogger(SubscriptionListener.class);

    @Inject
    EmailTemplatesAPI emailTemplatesAPI;
    @Inject
    private Messages messages;
    @Inject
    PersistenceTools persistenceTools;

    @Override
    public void onBeforeInsert(Subscription entity, EntityManager entityManager) {
         try {
            EmailTemplateBuilder builder = emailTemplatesAPI.buildFromTemplate(CREATED_TEMPLATE_CODE);
            builder.setTo(entity.getCustomer().getEmail())
                    .setSubject(messages.getMessage(SubscriptionListener.class, "createdSubscription"))
                    .sendEmail();
        } catch (TemplateNotFoundException | EmailException | ReportParameterTypeChangedException e) {
            LOG.warn(e.getMessage());
        }
    }

    @Override
    public void onBeforeUpdate(Subscription entity, EntityManager entityManager) {
        try {
            EmailTemplateBuilder builder = emailTemplatesAPI.buildFromTemplate(UPDATED_TEMPLATE_CODE)
                    .setTo(entity.getCustomer().getEmail());
            sendEmail(builder, "updatedSubscription");
            if (persistenceTools.isDirty(entity, "active")) {
                if (Boolean.TRUE.equals(entity.getActive())) {
                    sendEmail(builder, "renewedSubscription");
                } else {
                    sendEmail(builder, "endedSubscription");
                }
            }
        } catch (TemplateNotFoundException | EmailException | ReportParameterTypeChangedException e) {
            LOG.warn(e.getMessage());
        }
    }

    private void sendEmail(EmailTemplateBuilder builder, String message) throws TemplateNotFoundException, ReportParameterTypeChangedException, EmailException {
        builder.setSubject(messages.getMessage(SubscriptionListener.class, message))
                .sendEmail();
    }
}
