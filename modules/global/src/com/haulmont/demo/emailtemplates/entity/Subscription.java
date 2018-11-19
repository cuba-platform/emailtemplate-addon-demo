package com.haulmont.demo.emailtemplates.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.Listeners;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@NamePattern("%s %s %s|name,active,expiryDate")
@Table(name = "YETDEMO_SUBSCRIPTION")
@Entity(name = "yetdemo$Subscription")
@Listeners("yetdemo_SubscriptionListener")
public class Subscription extends StandardEntity {
    private static final long serialVersionUID = 7493062159589242279L;

    @Column(name = "NAME")
    protected String name;

    @NotNull
    @Column(name = "ACTIVE", nullable = false)
    protected Boolean active = false;

    @Temporal(TemporalType.DATE)
    @Column(name = "EXPIRY_DATE")
    protected Date expiryDate;

    @OnDeleteInverse(DeletePolicy.UNLINK)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CUSTOMER_ID")
    protected Customer customer;

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Customer getCustomer() {
        return customer;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


    public void setActive(Boolean active) {
        this.active = active;
    }

    public Boolean getActive() {
        return active;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }


}