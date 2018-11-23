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
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.Map;

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
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
            @Override
            public void afterCommit() {
                Map<String, Object> entityParams = new HashMap<>();
                entityParams.put("subscription", entity);
                entityParams.put("customer", entity.getCustomer());
                try {
                    emailTemplatesAPI.buildFromTemplate(CREATED_TEMPLATE_CODE)
                            .setTo(entity.getCustomer().getEmail())
                            .setBodyParameters(entityParams)
                            .sendEmail();
                } catch (TemplateNotFoundException | EmailException | ReportParameterTypeChangedException e) {
                    LOG.warn(e.getMessage());
                }
            }
        });
    }

    @Override
    public void onBeforeUpdate(Subscription entity, EntityManager entityManager) {
        Map<String, Object> entityParams = new HashMap<>();
        entityParams.put("subscription", entity);
        entityParams.put("customer", entity.getCustomer());
        try {
            emailTemplatesAPI.buildFromTemplate(UPDATED_TEMPLATE_CODE)
                    .setTo(entity.getCustomer().getEmail())
                    .setBodyParameters(entityParams)
                    .sendEmail();
            if (persistenceTools.isDirty(entity, "active")) {
                Map<String, Object> stringParams = new HashMap<>();
                stringParams.put("subscription", entity.getName());
                stringParams.put("customer", entity.getCustomer().getName());
                if (Boolean.TRUE.equals(entity.getActive())) {
                    emailTemplatesAPI.buildFromTemplate(RENEWED_TEMPLATE_CODE)
                            .setTo(entity.getCustomer().getEmail())
                            .setBodyParameters(stringParams)
                            .sendEmail();
                } else {
                    emailTemplatesAPI.buildFromTemplate(ENDED_TEMPLATE_CODE)
                            .setTo(entity.getCustomer().getEmail())
                            .setBodyParameters(stringParams)
                            .sendEmail();
                }
            }
        } catch (TemplateNotFoundException | EmailException | ReportParameterTypeChangedException e) {
            LOG.warn(e.getMessage());
        }
    }
}
