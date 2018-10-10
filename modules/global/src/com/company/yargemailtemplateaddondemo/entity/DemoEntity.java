package com.company.yargemailtemplateaddondemo.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s %s|name,description")
@Table(name = "DEMO_DEMO_ENTITY")
@Entity(name = "demo$DemoEntity")
public class DemoEntity extends StandardEntity {
    private static final long serialVersionUID = 2482120717125756987L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "DESCRIPTION")
    protected String description;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }


}