-- begin YETDEMO_CUSTOMER
create table YETDEMO_CUSTOMER (
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
-- end YETDEMO_CUSTOMER
-- begin YETDEMO_SUBSCRIPTION
create table YETDEMO_SUBSCRIPTION (
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
    CUSTOMER_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end YETDEMO_SUBSCRIPTION
