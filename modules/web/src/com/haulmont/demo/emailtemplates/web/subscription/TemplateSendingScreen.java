package com.haulmont.demo.emailtemplates.web.subscription;

import com.haulmont.addon.emailtemplates.entity.EmailTemplate;
import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.gui.Screens;
import com.haulmont.cuba.gui.WindowParam;
import com.haulmont.cuba.gui.components.AbstractWindow;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.components.LookupField;
import com.haulmont.cuba.gui.components.Window;
import com.haulmont.cuba.gui.screen.MapScreenOptions;
import com.haulmont.cuba.gui.screen.OpenMode;
import com.haulmont.cuba.gui.screen.StandardCloseAction;
import com.haulmont.demo.emailtemplates.entity.Subscription;

import javax.inject.Inject;
import java.util.Map;

public class TemplateSendingScreen extends AbstractWindow {

    @WindowParam
    private Subscription subscription;

    @Inject
    private LookupField<EmailTemplate> templatesField;

    @Inject
    private DataManager dataManager;

    @Inject
    private Screens screens;

    protected EmailTemplate template;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);

        templatesField.addValueChangeListener(t -> {
            template = t.getValue();
        });
    }

    public void onSendAction(Component source) {
        if (template != null) {
            template = dataManager.reload(template, "emailTemplate-view");
            if (subscription != null) {
                template.setTo(subscription.getCustomer().getEmail());
            }
            screens.create("emailtemplates$EmailTemplate.send", OpenMode.DIALOG, new MapScreenOptions(
                    ParamsMap.of("emailTemplate", template,
                            "subscription", subscription,
                            "firstName", subscription.getCustomer().getName(),
                            "lastName", subscription.getCustomer().getSurname())
            )).show();
        }
    }

    public void onCancelClick() {
        close(WINDOW_CLOSE_ACTION);
    }
}