package com.company.yargemailtemplateaddondemo.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.List;
import javax.persistence.OneToMany;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

@NamePattern("%s %s %s|name,surname,email")
@Table(name = "DEMO_CUSTOMER")
@Entity(name = "demo$Customer")
public class Customer extends StandardEntity {
    private static final long serialVersionUID = 6340863233037058962L;

    @Column(name = "NAME")
    protected String name;

    @Column(name = "SURNAME")
    protected String surname;

    @NotNull
    @Column(name = "EMAIL", nullable = false)
    protected String email;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "customer")
    protected List<Subscription> subscription;

    public void setSubscription(List<Subscription> subscription) {
        this.subscription = subscription;
    }

    public List<Subscription> getSubscription() {
        return subscription;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getSurname() {
        return surname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }


}