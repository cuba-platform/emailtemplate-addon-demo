package com.haulmont.demo.emailtemplates.listeners;

import com.haulmont.demo.emailtemplates.entity.Subscription;
import com.haulmont.addon.emailtemplates.core.EmailTemplatesAPI;
import com.haulmont.addon.emailtemplates.exceptions.ReportParameterTypeChangedException;
import com.haulmont.addon.emailtemplates.exceptions.TemplateNotFoundException;
import com.haulmont.cuba.core.EntityManager;
import com.haulmont.cuba.core.PersistenceTools;
import com.haulmont.cuba.core.global.EmailException;
import com.haulmont.cuba.core.listener.BeforeInsertEntityListener;
import com.haulmont.cuba.core.listener.BeforeUpdateEntityListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

@Component("yetdemo_SubscriptionListener")
public class SubscriptionListener implements BeforeInsertEntityListener<Subscription>, BeforeUpdateEntityListener<Subscription> {

    public static final String CREATED_TEMPLATE_CODE = "subscription_created";
    public static final String UPDATED_TEMPLATE_CODE = "subscription_updated";
    public static final String ENDED_TEMPLATE_CODE = "subscription_ended";
    public static final String RENEWED_TEMPLATE_CODE = "subscription_renewed";

    private static final Logger LOG = LoggerFactory.getLogger(SubscriptionListener.class);

    @Inject
    EmailTemplatesAPI emailTemplatesAPI;
    @Inject
    PersistenceTools persistenceTools;

    @Override
    public void onBeforeInsert(Subscription entity, EntityManager entityManager) {
         try {
            emailTemplatesAPI.buildFromTemplate(CREATED_TEMPLATE_CODE)
                    .setTo(entity.getCustomer().getEmail())
                    .sendEmail();
        } catch (TemplateNotFoundException | EmailException | ReportParameterTypeChangedException e) {
            LOG.warn(e.getMessage());
        }
    }

    @Override
    public void onBeforeUpdate(Subscription entity, EntityManager entityManager) {
        try {
            emailTemplatesAPI.buildFromTemplate(UPDATED_TEMPLATE_CODE)
                    .setTo(entity.getCustomer().getEmail())
                    .sendEmail();
            if (persistenceTools.isDirty(entity, "active")) {
                if (Boolean.TRUE.equals(entity.getActive())) {
                    emailTemplatesAPI.buildFromTemplate(RENEWED_TEMPLATE_CODE)
                            .setTo(entity.getCustomer().getEmail())
                            .sendEmail();
                } else {
                    emailTemplatesAPI.buildFromTemplate(ENDED_TEMPLATE_CODE)
                            .setTo(entity.getCustomer().getEmail())
                            .sendEmail();
                }
            }
        } catch (TemplateNotFoundException | EmailException | ReportParameterTypeChangedException e) {
            LOG.warn(e.getMessage());
        }
    }
}
