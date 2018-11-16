package com.company.yargemailtemplateaddondemo.web.subscription;

import com.haulmont.addon.emailtemplates.entity.EmailTemplate;
import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.LookupField;

import javax.inject.Inject;
import java.util.Map;

public class SubscriptionBrowse extends AbstractLookup {

    @Inject
    private LookupField templatesField;
    @Inject
    private DataManager dataManager;

    protected EmailTemplate template;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);

        templatesField.addValueChangeListener(t -> {
            template = (EmailTemplate) t.getValue();
        });
    }

    public void onSendButtonClick() {
        if (template != null) {
            template = dataManager.reload(template, "emailTemplate-view");
            openWindow("emailtemplates$EmailTemplate.send", WindowManager.OpenType.DIALOG, ParamsMap.of("emailTemplate", template));
        }
    }
}