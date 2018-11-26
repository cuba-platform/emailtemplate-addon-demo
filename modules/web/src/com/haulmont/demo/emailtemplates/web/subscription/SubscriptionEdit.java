package com.haulmont.demo.emailtemplates.web.subscription;

import com.haulmont.cuba.core.global.CommitContext;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.PickerField;
import com.haulmont.demo.emailtemplates.entity.Customer;
import com.haulmont.demo.emailtemplates.entity.Subscription;

import javax.inject.Named;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class SubscriptionEdit extends AbstractEditor<Subscription> {

    @Named("fieldGroup.customer")
    private PickerField customerField;

    protected List<Customer> entitiesToUpdate = new ArrayList<>();

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        customerField.addLookupAction();
    }

    @Override
    protected void postInit() {
        super.postInit();

        customerField.addValueChangeListener(v -> {
            if (v.getValue() != null) {
                entitiesToUpdate.clear();
                Customer customer = (Customer) v.getValue();
                customer = getDsContext().getDataSupplier().reload(customer, "customer-view");
                Customer currentCustomer = getItem().getCustomer();
                Subscription subscription = customer.getSubscription().stream()
                        .filter(s -> s.equals(getItem()))
                        .findFirst()
                        .orElse(null);
                if (subscription != null) {
                    currentCustomer.getSubscription().remove(subscription);
                    customer.getSubscription().add(subscription);
                    entitiesToUpdate.add(customer);
                    entitiesToUpdate.add(currentCustomer);
                }
            }
        });
    }

    @Override
    protected boolean postCommit(boolean committed, boolean close) {
        if (committed) {
            CommitContext commitContext = new CommitContext();
            entitiesToUpdate.forEach(commitContext::addInstanceToCommit);
            getDsContext().getDataSupplier().commit(commitContext);
        }
        return super.postCommit(committed, close);
    }
}