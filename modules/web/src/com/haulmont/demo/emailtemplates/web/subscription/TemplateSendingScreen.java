package com.haulmont.demo.emailtemplates.web.subscription;

import com.haulmont.addon.emailtemplates.entity.EmailTemplate;
import com.haulmont.addon.emailtemplates.entity.ParameterValue;
import com.haulmont.addon.emailtemplates.service.TemplateParametersExtractorService;
import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.WindowParam;
import com.haulmont.cuba.gui.components.AbstractWindow;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.components.LookupField;
import com.haulmont.cuba.gui.components.Window;
import com.haulmont.demo.emailtemplates.entity.Subscription;
import com.haulmont.reports.app.service.ReportService;
import com.haulmont.reports.entity.ParameterType;
import com.haulmont.reports.entity.Report;
import com.haulmont.reports.entity.ReportInputParameter;

import javax.inject.Inject;
import java.util.Map;

public class TemplateSendingScreen extends AbstractWindow {

    @WindowParam
    private Subscription subscription;

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

    public void onSendAction(Component source) {
        if (template != null) {
            template = dataManager.reload(template, "emailTemplate-view");
            if (subscription != null) {
                template.setTo(subscription.getCustomer().getEmail());
            }
            openWindow("emailtemplates$EmailTemplate.send", WindowManager.OpenType.DIALOG,
                    ParamsMap.of("emailTemplate", template,
                            "subscription", subscription,
                            "firstName", subscription.getCustomer().getName(),
                            "lastName", subscription.getCustomer().getSurname()));
        }
    }

    public void onCancelClick() {
        close(Window.CLOSE_ACTION_ID);
    }
}