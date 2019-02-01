package com.haulmont.demo.emailtemplates.web.subscription;

import com.haulmont.cuba.core.global.CommitContext;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.PickerField;
import com.haulmont.demo.emailtemplates.entity.Customer;
import com.haulmont.demo.emailtemplates.entity.Subscription;

import javax.inject.Named;
import java.util.ArrayList;
import java.util.List;

public class SubscriptionEdit extends AbstractEditor<Subscription> {

    @Named("fieldGroup.customer")
    private PickerField<Customer> customerField;

    protected List<Customer> entitiesToUpdate = new ArrayList<>();


    @Override
    protected void postInit() {
        super.postInit();

        customerField.addValueChangeListener(v -> {
            if (v.getValue() != null) {
                entitiesToUpdate.clear();
                Customer customer = v.getValue();
                customer = getDsContext().getDataSupplier().reload(customer, "customer-view");
                Customer currentCustomer = getItem().getCustomer();
                currentCustomer = getDsContext().getDataSupplier().reload(currentCustomer, "customer-view");
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