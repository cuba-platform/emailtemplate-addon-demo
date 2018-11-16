package com.company.yargemailtemplateaddondemo.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.haulmont.cuba.core.entity.annotation.Listeners;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;
import com.haulmont.cuba.core.global.DeletePolicy;

@NamePattern("%s %s %s|name,active,expiryDate")
@Table(name = "DEMO_SUBSCRIPTION")
@Entity(name = "demo$Subscription")
@Listeners("demo_SubscriptionListener")
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