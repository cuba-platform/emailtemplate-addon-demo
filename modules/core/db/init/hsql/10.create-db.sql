-- begin DEMO_CUSTOMER
create table DEMO_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    SURNAME varchar(255),
    EMAIL varchar(255) not null,
    --
    primary key (ID)
)^
-- end DEMO_CUSTOMER
-- begin DEMO_SUBSCRIPTION
create table DEMO_SUBSCRIPTION (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    ACTIVE boolean not null,
    EXPIRY_DATE date,
    CUSTOMER_ID varchar(36),
    --
    primary key (ID)
)^
-- end DEMO_SUBSCRIPTION
