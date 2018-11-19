package com.company.yargemailtemplateaddondemo.web.subscription;

import com.company.yargemailtemplateaddondemo.entity.Subscription;
import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Action;
import com.haulmont.cuba.gui.components.GroupTable;
import com.haulmont.cuba.gui.components.actions.ItemTrackingAction;

import javax.inject.Inject;
import java.util.Map;

public class SubscriptionBrowse extends AbstractLookup {

    @Inject
    private GroupTable<Subscription> subscriptionsTable;
    @Inject
    private DataManager dataManager;

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
            openWindow("sendNotificationScreen", WindowManager.OpenType.DIALOG, ParamsMap.of("subscription", subscription));
        }
    }
}