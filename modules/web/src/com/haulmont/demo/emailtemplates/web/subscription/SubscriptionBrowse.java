package com.haulmont.demo.emailtemplates.web.subscription;

import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.gui.Screens;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.components.GroupTable;
import com.haulmont.cuba.gui.components.actions.ItemTrackingAction;
import com.haulmont.cuba.gui.screen.MapScreenOptions;
import com.haulmont.cuba.gui.screen.OpenMode;
import com.haulmont.demo.emailtemplates.entity.Subscription;

import javax.inject.Inject;
import java.util.Map;

public class SubscriptionBrowse extends AbstractLookup {

    @Inject
    private GroupTable<Subscription> subscriptionsTable;
    @Inject
    private DataManager dataManager;
    @Inject
    private Screens screens;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        Action sendAction = new ItemTrackingAction(subscriptionsTable, "sendNotificationAction").
                withHandler(actionPerformedEvent -> onSendNotificationButtonClick());
        subscriptionsTable.addAction(sendAction);
    }

    public void onSendNotificationButtonClick() {
        Subscription subscription = subscriptionsTable.getSingleSelected();
        if (subscription != null) {
            subscription = dataManager.reload(subscription, "subscription-view");
            screens.create("sendNotificationScreen",
                    OpenMode.DIALOG,
                    new MapScreenOptions(ParamsMap.of("subscription", subscription))
            ).show();
        }
    }
}