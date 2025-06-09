  CREATE TABLE "CUSTOMERS" 
   (	"CUSTOMER_ID" VARCHAR2(10), 
	"FIRST_NAME" VARCHAR2(100) NOT NULL ENABLE, 
	"MIDDLE_NAME" VARCHAR2(100), 
	"SURNAME" VARCHAR2(100) NOT NULL ENABLE, 
	"DOB" DATE NOT NULL ENABLE, 
	"PHONE_NO" VARCHAR2(20) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(255) NOT NULL ENABLE, 
	"UNIT_NO" VARCHAR2(20), 
	"STREET" VARCHAR2(100), 
	"ADDRESS_1" VARCHAR2(100), 
	"ADDRESS_2" VARCHAR2(100), 
	"SUBURB" VARCHAR2(100) NOT NULL ENABLE, 
	"STATE" VARCHAR2(50) NOT NULL ENABLE, 
	"POSTALCODE" VARCHAR2(20) NOT NULL ENABLE, 
	"COUNTRY" VARCHAR2(50) DEFAULT 'AUSTRALIA' NOT NULL ENABLE, 
	"REQUIREMENT" VARCHAR2(50), 
	"IS_PARTNER" CHAR(1) DEFAULT 'N' NOT NULL ENABLE, 
	"NO_OF_DEPENDANTS" NUMBER(2,0) DEFAULT 0, 
	"INCOME_AMOUNT" NUMBER(12,2) NOT NULL ENABLE, 
	"INCOME_FREQUENCY" VARCHAR2(10) NOT NULL ENABLE, 
	"MONTHLY_EXPENSES" NUMBER(12,2) NOT NULL ENABLE, 
	"COMMENTS" CLOB, 
	"IS_SUBSCRIBED" CHAR(1) DEFAULT 'N' NOT NULL ENABLE, 
	"AUDIT_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"AUDIT_CREATED_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"AUDIT_USER" VARCHAR2(50) NOT NULL ENABLE, 
	"AUDIT_PRODUCT" VARCHAR2(50) DEFAULT 'WILMAFIN' NOT NULL ENABLE, 
	"AUDIT_SESSION" VARCHAR2(100), 
	"LOAN_AMOUNT" NUMBER(20,2), 
	"PRIORITY_LEVEL" VARCHAR2(1 CHAR), 
	"SALUTATION" VARCHAR2(10), 
	 PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "CHK_CUSTOMERS_IS_PARTNER" CHECK (is_partner IN ('Y', 'N')) ENABLE, 
	 CONSTRAINT "CHK_CUSTOMERS_IS_SUBSCRIBED" CHECK (is_subscribed IN ('Y', 'N')) ENABLE, 
	 CONSTRAINT "CHK_CUSTOMERS_INCOME_FREQUENCY" CHECK (income_frequency IN ('A', 'M', 'W')) ENABLE, 
	 CONSTRAINT "CHK_CUSTOMERS_REQUIREMENT" CHECK (requirement IN ('FH', 'RE', 'IN','PL','VL')) ENABLE
   ) ;

  CREATE TABLE "CUSTOMERS_AUD" 
   (	"CUSTOMER_ID" VARCHAR2(10) NOT NULL ENABLE, 
	"OPERATION_TYPE" VARCHAR2(1) NOT NULL ENABLE, 
	"OPERATION_TIMESTAMP" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"OPERATION_USER" VARCHAR2(50) NOT NULL ENABLE, 
	"OPERATION_PRODUCT" VARCHAR2(50) DEFAULT 'WILMAAPP-Package' NOT NULL ENABLE, 
	"OPERATION_SESSION" VARCHAR2(100), 
	"FIRST_NAME" VARCHAR2(100), 
	"MIDDLE_NAME" VARCHAR2(100), 
	"SURNAME" VARCHAR2(100), 
	"DOB" DATE, 
	"PHONE_NO" VARCHAR2(20), 
	"EMAIL" VARCHAR2(255), 
	"UNIT_NO" VARCHAR2(20), 
	"STREET" VARCHAR2(100), 
	"ADDRESS_1" VARCHAR2(100), 
	"ADDRESS_2" VARCHAR2(100), 
	"SUBURB" VARCHAR2(100), 
	"STATE" VARCHAR2(50), 
	"POSTALCODE" VARCHAR2(20), 
	"COUNTRY" VARCHAR2(50), 
	"REQUIREMENT" VARCHAR2(50), 
	"IS_PARTNER" CHAR(1), 
	"NO_OF_DEPENDANTS" NUMBER(2,0), 
	"INCOME_AMOUNT" NUMBER(12,2), 
	"INCOME_FREQUENCY" VARCHAR2(10), 
	"MONTHLY_EXPENSES" NUMBER(12,2), 
	"COMMENTS" CLOB, 
	"IS_SUBSCRIBED" CHAR(1), 
	"CHANGED_COLUMNS" VARCHAR2(4000), 
	"AUDIT_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"LOAN_AMOUNT" NUMBER(20,2), 
	"PRIORITY_LEVEL" VARCHAR2(1 CHAR), 
	"SALUTATION" VARCHAR2(10), 
	 CONSTRAINT "CHK_CUSTOMERS_AUD_OPERATION_TYPE" CHECK (operation_type IN ('I', 'U', 'D')) ENABLE
   ) ;

  CREATE TABLE "DBTOOLS$EXECUTION_HISTORY" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"HASH" CLOB, 
	"CREATED_BY" VARCHAR2(255), 
	"CREATED_ON" TIMESTAMP (6) WITH TIME ZONE, 
	"UPDATED_BY" VARCHAR2(255), 
	"UPDATED_ON" TIMESTAMP (6) WITH TIME ZONE, 
	"STATEMENT" CLOB, 
	"TIMES" NUMBER, 
	 CONSTRAINT "DBTOOLS$EXECUTION_HISTORY_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "AM_CONFIGURATION" 
   (	"CONFIG_ID" NUMBER, 
	"CONFIG_DISPLAY_NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(100), 
	"CONFIG_NAME" VARCHAR2(100), 
	"DEFAULT_VALUE" VARCHAR2(100), 
	"CONFIG_VALUE" VARCHAR2(100), 
	"AUDIT_CREATED_DATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"RECORD_ID" NUMBER, 
	"AUDIT_DATE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"AUDIT_USER" VARCHAR2(50) NOT NULL ENABLE, 
	"AUDIT_PRODUCT" VARCHAR2(50) DEFAULT 'APEX_APP' NOT NULL ENABLE, 
	"AUDIT_SESSION" VARCHAR2(100), 
	 PRIMARY KEY ("CONFIG_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "AM_CONFIGURATION_AUD" 
   (	"AUDIT_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"CONFIG_ID" NUMBER, 
	"CONFIG_DISPLAY_NAME" VARCHAR2(255), 
	"DESCRIPTION" VARCHAR2(100), 
	"CONFIG_NAME" VARCHAR2(100), 
	"DEFAULT_VALUE" VARCHAR2(100), 
	"CONFIG_VALUE" VARCHAR2(100), 
	"AUDIT_CREATED_DATE" TIMESTAMP (6), 
	"RECORD_ID" NUMBER, 
	"AUDIT_DATE" TIMESTAMP (6), 
	"AUDIT_USER" VARCHAR2(50), 
	"AUDIT_PRODUCT" VARCHAR2(50), 
	"AUDIT_SESSION" VARCHAR2(100), 
	"OPERATION_TYPE" CHAR(1), 
	"OPERATION_TIMESTAMP" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	 PRIMARY KEY ("AUDIT_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "CUSTOMER_CONTACT" 
   (	"CUSTOMER_ID" NUMBER DEFAULT "WILMAFIN"."CUSTOMER_ID_SEQ"."NEXTVAL", 
	"FIRST_NAME" VARCHAR2(100) NOT NULL ENABLE, 
	"SURNAME" VARCHAR2(100) NOT NULL ENABLE, 
	"PHONE" VARCHAR2(20), 
	"EMAIL" VARCHAR2(150), 
	"LOAN_TYPE" VARCHAR2(50), 
	"MESSAGE" VARCHAR2(1000), 
	"AUDIT_DATE" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"AUDIT_USER" VARCHAR2(100), 
	"AUDIT_PRODUCT" VARCHAR2(100), 
	"AUDIT_SESSION" VARCHAR2(100), 
	 PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "DYNAMIC_MENU" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"NAME" VARCHAR2(255), 
	"TARGET" VARCHAR2(500), 
	"MENU_ORDER" NUMBER, 
	"USER_ROLE" VARCHAR2(50), 
	"PARENT_ENTRY" NUMBER, 
	"MENU_LEVEL" NUMBER DEFAULT 1, 
	"ICON" VARCHAR2(100), 
	"CHILDREN" NUMBER DEFAULT 0, 
	"UPDATED_ON" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(100), 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "DYNAMIC_NAVIGATION" 
   (	"SEQUENCE" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"ICON" VARCHAR2(100), 
	"NAME" VARCHAR2(255) NOT NULL ENABLE, 
	"TARGET" VARCHAR2(500) NOT NULL ENABLE, 
	"level" NUMBER DEFAULT 1, 
	"PARENT_ENTRY" NUMBER, 
	"AUTHORIZATION_SCHEME" VARCHAR2(255), 
	"CONDITIONAL" VARCHAR2(255), 
	"UPDATED_ON" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"UPDATED_BY" VARCHAR2(100) NOT NULL ENABLE, 
	 PRIMARY KEY ("SEQUENCE")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "LOAN_CALCULATOR" 
   (	"CALCULATOR_ID" NUMBER DEFAULT "WILMAFIN"."CALCULATOR_ID_SEQ"."NEXTVAL", 
	"CALCULATOR_TYPE" VARCHAR2(50) NOT NULL ENABLE, 
	"INTEREST_RATE" NUMBER(5,2), 
	"PROPERTY_TYPE" VARCHAR2(100), 
	"BUYING_REASON" VARCHAR2(255), 
	"REPAYMENT_TYPE" VARCHAR2(50), 
	"AUDIT_DATE" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"AUDIT_USER" VARCHAR2(100), 
	"AUDIT_PRODUCT" VARCHAR2(100), 
	"AUDIT_SESSION" VARCHAR2(100), 
	 CONSTRAINT "PK_LOAN_CALCULATOR" PRIMARY KEY ("CALCULATOR_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "NAV_BAR" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PARENT_ID" NUMBER, 
	"NAME" VARCHAR2(50), 
	"LEVEL" NUMBER, 
	"ORDER_RANK" NUMBER, 
	"MENU_ICON" VARCHAR2(50), 
	"PAGE_ID" NUMBER, 
	"ENABLED_FLAG" NUMBER, 
	"APP_ID" NUMBER, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "NAV_MENU" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PARENT_ID" NUMBER, 
	"NAME" VARCHAR2(50), 
	"LEVEL" NUMBER, 
	"ORDER_RANK" NUMBER, 
	"MENU_ICON" VARCHAR2(50), 
	"PAGE_ID" NUMBER, 
	"ENABLED_FLAG" NUMBER, 
	"APP_ID" NUMBER, 
	"HEADER_DESC" VARCHAR2(500), 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "WM_USER" 
   (	"USER_ID" NUMBER, 
	"RECORD_ID" NUMBER, 
	"USERNAME" VARCHAR2(50) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(50) ENCRYPT USING 'AES256' 'SHA-1' NOT NULL ENABLE, 
	"FIRST_NAME" VARCHAR2(50), 
	"LAST_NAME" VARCHAR2(50), 
	"EMAIL" VARCHAR2(100), 
	"DATE_OF_BIRTH" DATE, 
	"AUDIT_DATE" TIMESTAMP (6), 
	"AUDIT_USER" VARCHAR2(50), 
	"AUDIT_CREATED_DATE" TIMESTAMP (6), 
	"AUDIT_CREATED_USER" VARCHAR2(50), 
	 PRIMARY KEY ("USER_ID")
  USING INDEX  ENABLE, 
	 UNIQUE ("RECORD_ID")
  USING INDEX  ENABLE, 
	 UNIQUE ("EMAIL")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "WM_USER_AUD" 
   (	"AUDIT_ID" NUMBER, 
	"RECORD_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"USERNAME" VARCHAR2(50), 
	"PASSWORD" VARCHAR2(50) ENCRYPT USING 'AES256' 'SHA-1', 
	"FIRST_NAME" VARCHAR2(50), 
	"LAST_NAME" VARCHAR2(50), 
	"EMAIL" VARCHAR2(100), 
	"DATE_OF_BIRTH" DATE, 
	"ACTION_TYPE" VARCHAR2(10), 
	"AUDIT_DATE" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"AUDIT_USER" VARCHAR2(50), 
	"AUDIT_CREATED_DATE" TIMESTAMP (6), 
	"AUDIT_CREATED_USER" VARCHAR2(50), 
	 PRIMARY KEY ("AUDIT_ID")
  USING INDEX  ENABLE, 
	 UNIQUE ("RECORD_ID")
  USING INDEX  ENABLE
   ) ;


   CREATE SEQUENCE  "DBTOOLS$EXECUTION_HISTORY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "WM_USER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100000 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "WM_USER_AUDIT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100000 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "CALCULATOR_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "CUSTOMER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "CUSTOMER_NUM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 111000 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "NAV_MENU_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 40 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "SEQ_AM_CONFIG_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "SEQ_AM_RECORD_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;



CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_AM_CONFIGURATION_AUD" 
AFTER INSERT OR UPDATE OR DELETE ON am_configuration
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO am_configuration_aud (
            config_id, config_display_name, description, config_name,
            default_value, config_value, audit_created_date,
            record_id, audit_date, audit_user, audit_product, audit_session,
            operation_type, operation_timestamp
        ) VALUES (
            :NEW.config_id, :NEW.config_display_name, :NEW.description, :NEW.config_name,
            :NEW.default_value, :NEW.config_value, :NEW.audit_created_date,
            :NEW.record_id, :NEW.audit_date, :NEW.audit_user, :NEW.audit_product, :NEW.audit_session,
            'I', SYSTIMESTAMP
        );

    ELSIF UPDATING THEN
        INSERT INTO am_configuration_aud (
            config_id, config_display_name, description, config_name,
            default_value, config_value, audit_created_date,
            record_id, audit_date, audit_user, audit_product, audit_session,
            operation_type, operation_timestamp
        ) VALUES (
            :OLD.config_id, :OLD.config_display_name, :OLD.description, :OLD.config_name,
            :OLD.default_value, :OLD.config_value, :OLD.audit_created_date,
            :OLD.record_id, :OLD.audit_date, :OLD.audit_user, :OLD.audit_product, :OLD.audit_session,
            'U', SYSTIMESTAMP
        );

    ELSIF DELETING THEN
        INSERT INTO am_configuration_aud (
            config_id, config_display_name, description, config_name,
            default_value, config_value, audit_created_date,
            record_id, audit_date, audit_user, audit_product, audit_session,
            operation_type, operation_timestamp
        ) VALUES (
            :OLD.config_id, :OLD.config_display_name, :OLD.description, :OLD.config_name,
            :OLD.default_value, :OLD.config_value, :OLD.audit_created_date,
            :OLD.record_id, :OLD.audit_date, :OLD.audit_user, :OLD.audit_product, :OLD.audit_session,
            'D', SYSTIMESTAMP
        );
    END IF;
END;
/
ALTER TRIGGER "TRG_AM_CONFIGURATION_AUD" ENABLE;

  CREATE INDEX "IDX_CUSTOMERS_EMAIL" ON "CUSTOMERS" ("EMAIL") 
  ;

  CREATE INDEX "IDX_CUSTOMERS_PHONE" ON "CUSTOMERS" ("PHONE_NO") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_CUSTOMER_ID" 
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    IF :NEW.customer_id IS NULL THEN
        :NEW.customer_id := 'REF' || customer_num_seq.NEXTVAL;
    END IF;
END;
/
ALTER TRIGGER "TRG_CUSTOMER_ID" ENABLE;
  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_CUSTOMERS_AUDIT" 
AFTER INSERT OR UPDATE OR DELETE ON customers
FOR EACH ROW
DECLARE
    l_changed_columns VARCHAR2(4000);
BEGIN
    -- For INSERT operations
    IF INSERTING THEN
        INSERT INTO customers_aud (
            customer_id, operation_type, operation_user, operation_product, operation_session,salutation,
            first_name, middle_name, surname, dob, phone_no, email, unit_no, street,
            address_1, address_2, suburb, state, postalcode, country, requirement,
            is_partner, no_of_dependants, income_amount, income_frequency, monthly_expenses,loan_amount,priority_level,
            comments, is_subscribed, changed_columns
        ) VALUES (
            :NEW.customer_id, 'I', :NEW.audit_user, :NEW.audit_product, :NEW.audit_session,:NEW.salutation,
            :NEW.first_name, :NEW.middle_name, :NEW.surname, :NEW.dob, :NEW.phone_no, :NEW.email,
            :NEW.unit_no, :NEW.street, :NEW.address_1, :NEW.address_2, :NEW.suburb, :NEW.state,
            :NEW.postalcode, :NEW.country, :NEW.requirement, :NEW.is_partner, :NEW.no_of_dependants,
            :NEW.income_amount, :NEW.income_frequency, :NEW.monthly_expenses,:NEW.loan_amount,:NEW.priority_level, :NEW.comments,
            :NEW.is_subscribed, 'ALL_COLUMNS'
        );
    
    -- For UPDATE operations
    ELSIF UPDATING THEN
        -- Build changed columns list
        l_changed_columns := NULL;
        
        IF :NEW.salutation != :OLD.salutation THEN l_changed_columns := l_changed_columns || 'SALUTATION,'; END IF;
        IF :NEW.first_name != :OLD.first_name THEN l_changed_columns := l_changed_columns || 'FIRST_NAME,'; END IF;
        IF NVL(:NEW.middle_name,'') != NVL(:OLD.middle_name,'') THEN l_changed_columns := l_changed_columns || 'MIDDLE_NAME,'; END IF;
        IF :NEW.surname != :OLD.surname THEN l_changed_columns := l_changed_columns || 'SURNAME,'; END IF;
        -- Continue for all columns...
        
        -- Remove trailing comma if exists
        IF l_changed_columns IS NOT NULL THEN
            l_changed_columns := RTRIM(l_changed_columns, ',');
        END IF;
        
        INSERT INTO customers_aud (
            customer_id, operation_type, operation_user, operation_product, operation_session,salutation,
            first_name, middle_name, surname, dob, phone_no, email, unit_no, street,
            address_1, address_2, suburb, state, postalcode, country, requirement,
            is_partner, no_of_dependants, income_amount, income_frequency, monthly_expenses,loan_amount,priority_level,
            comments, is_subscribed, changed_columns
        ) VALUES (
            :NEW.customer_id, 'U', :NEW.audit_user, :NEW.audit_product, :NEW.audit_session,:NEW.salutation,
            :NEW.first_name, :NEW.middle_name, :NEW.surname, :NEW.dob, :NEW.phone_no, :NEW.email,
            :NEW.unit_no, :NEW.street, :NEW.address_1, :NEW.address_2, :NEW.suburb, :NEW.state,
            :NEW.postalcode, :NEW.country, :NEW.requirement, :NEW.is_partner, :NEW.no_of_dependants,
            :NEW.income_amount, :NEW.income_frequency, :NEW.monthly_expenses,:NEW.loan_amount,:NEW.priority_level, :NEW.comments,
            :NEW.is_subscribed, l_changed_columns
        );
    
    -- For DELETE operations
    ELSIF DELETING THEN
        INSERT INTO customers_aud (
            customer_id, operation_type, operation_user, operation_product, operation_session,salutation,
            first_name, middle_name, surname, dob, phone_no, email, unit_no, street,
            address_1, address_2, suburb, state, postalcode, country, requirement,
            is_partner, no_of_dependants, income_amount, income_frequency, monthly_expenses,loan_amount,priority_level,
            comments, is_subscribed, changed_columns
        ) VALUES (
            :OLD.customer_id, 'D', :OLD.audit_user, :OLD.audit_product, :OLD.audit_session,:OLD.salutation,
            :OLD.first_name, :OLD.middle_name, :OLD.surname, :OLD.dob, :OLD.phone_no, :OLD.email,
            :OLD.unit_no, :OLD.street, :OLD.address_1, :OLD.address_2, :OLD.suburb, :OLD.state,
            :OLD.postalcode, :OLD.country, :OLD.requirement, :OLD.is_partner, :OLD.no_of_dependants,
            :OLD.income_amount, :OLD.income_frequency, :OLD.monthly_expenses, :OLD.loan_amount,:OLD.priority_level,:OLD.comments,
            :OLD.is_subscribed, 'RECORD_DELETED'
        );
    END IF;
END;
/
ALTER TRIGGER "TRG_CUSTOMERS_AUDIT" ENABLE;

  CREATE INDEX "IDX_CUSTOMERS_AUD_CUSTOMER" ON "CUSTOMERS_AUD" ("CUSTOMER_ID") 
  ;

  CREATE INDEX "IDX_CUSTOMERS_AUD_TIMESTAMP" ON "CUSTOMERS_AUD" ("OPERATION_TIMESTAMP") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SEC_NAV_MENU_SEQ_TRG" -- Create Trigger
    before insert
    on NAV_MENU
    for each row
BEGIN
  :new.ID := NAV_MENU_SEQ.nextval;
END SEC_NAV_MENU_SEQ_TRG;
/
ALTER TRIGGER "SEC_NAV_MENU_SEQ_TRG" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_WM_USER_INSERT" 
BEFORE INSERT ON WM_USER
FOR EACH ROW
BEGIN
    :NEW.RECORD_ID := WM_USER_ID_SEQ.NEXTVAL;
    INSERT INTO WM_USER_AUD (
        AUDIT_ID, RECORD_ID, USER_ID, USERNAME, PASSWORD, FIRST_NAME, LAST_NAME,
        EMAIL, DATE_OF_BIRTH, ACTION_TYPE, AUDIT_DATE, AUDIT_USER,
        AUDIT_CREATED_DATE, AUDIT_CREATED_USER
    ) VALUES (
        WM_USER_AUDIT_ID_SEQ.NEXTVAL, :NEW.RECORD_ID, :NEW.USER_ID, :NEW.USERNAME,
        :NEW.PASSWORD, :NEW.FIRST_NAME, :NEW.LAST_NAME, :NEW.EMAIL, :NEW.DATE_OF_BIRTH,
        'INSERT', CURRENT_TIMESTAMP, USER, :NEW.AUDIT_CREATED_DATE, :NEW.AUDIT_CREATED_USER
    );
END;
/
ALTER TRIGGER "TRG_WM_USER_INSERT" ENABLE;
  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_WM_USER_UPDATE" 
BEFORE UPDATE ON WM_USER
FOR EACH ROW
BEGIN
    INSERT INTO WM_USER_AUD (
        AUDIT_ID, RECORD_ID, USER_ID, USERNAME, PASSWORD, FIRST_NAME, LAST_NAME,
        EMAIL, DATE_OF_BIRTH, ACTION_TYPE, AUDIT_DATE, AUDIT_USER,
        AUDIT_CREATED_DATE, AUDIT_CREATED_USER
    ) VALUES (
        WM_USER_AUDIT_ID_SEQ.NEXTVAL, :NEW.RECORD_ID, :NEW.USER_ID, :NEW.USERNAME,
        :NEW.PASSWORD, :NEW.FIRST_NAME, :NEW.LAST_NAME, :NEW.EMAIL, :NEW.DATE_OF_BIRTH,
        'UPDATE', CURRENT_TIMESTAMP, USER, :NEW.AUDIT_CREATED_DATE, :NEW.AUDIT_CREATED_USER
    );
END;
/
ALTER TRIGGER "TRG_WM_USER_UPDATE" ENABLE;
  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_WM_USER_DELETE" 
BEFORE DELETE ON WM_USER
FOR EACH ROW
BEGIN
    INSERT INTO WM_USER_AUD (
        AUDIT_ID, RECORD_ID, USER_ID, USERNAME, PASSWORD, FIRST_NAME, LAST_NAME,
        EMAIL, DATE_OF_BIRTH, ACTION_TYPE, AUDIT_DATE, AUDIT_USER,
        AUDIT_CREATED_DATE, AUDIT_CREATED_USER
    ) VALUES (
        WM_USER_AUDIT_ID_SEQ.NEXTVAL, :OLD.RECORD_ID, :OLD.USER_ID, :OLD.USERNAME,
        :OLD.PASSWORD, :OLD.FIRST_NAME, :OLD.LAST_NAME, :OLD.EMAIL, :OLD.DATE_OF_BIRTH,
        'DELETE', CURRENT_TIMESTAMP, USER, :OLD.AUDIT_CREATED_DATE, :OLD.AUDIT_CREATED_USER
    );
END;
/
ALTER TRIGGER "TRG_WM_USER_DELETE" ENABLE;

alter table "CUSTOMERS" add
("IS_PARTNER_JOIN" CHAR(1 BYTE) default 'N' );


alter table "CUSTOMERS" add
("PTN_INCOME_AMOUNT" NUMBER(15,2));

  CREATE UNIQUE INDEX "DBTOOLS$EXECUTION_HISTORY_PK" ON "DBTOOLS$EXECUTION_HISTORY" ("ID") 
  ;

  CREATE INDEX "IDX_CUSTOMERS_AUD_CUSTOMER" ON "CUSTOMERS_AUD" ("CUSTOMER_ID") 
  ;

  CREATE INDEX "IDX_CUSTOMERS_AUD_TIMESTAMP" ON "CUSTOMERS_AUD" ("OPERATION_TIMESTAMP") 
  ;

  CREATE INDEX "IDX_CUSTOMERS_EMAIL" ON "CUSTOMERS" ("EMAIL") 
  ;

  CREATE INDEX "IDX_CUSTOMERS_PHONE" ON "CUSTOMERS" ("PHONE_NO") 
  ;

  CREATE UNIQUE INDEX "PK_LOAN_CALCULATOR" ON "LOAN_CALCULATOR" ("CALCULATOR_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0045566" ON "WM_USER" ("USER_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0045567" ON "WM_USER" ("RECORD_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0045568" ON "WM_USER" ("EMAIL") 
  ;

  CREATE UNIQUE INDEX "SYS_C0045569" ON "WM_USER_AUD" ("AUDIT_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0045570" ON "WM_USER_AUD" ("RECORD_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0046044" ON "CUSTOMER_CONTACT" ("CUSTOMER_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0052945" ON "DYNAMIC_MENU" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0052958" ON "DYNAMIC_NAVIGATION" ("SEQUENCE") 
  ;

  CREATE UNIQUE INDEX "SYS_C0052960" ON "NAV_MENU" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0052966" ON "NAV_BAR" ("ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0053476" ON "CUSTOMERS" ("CUSTOMER_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0053528" ON "AM_CONFIGURATION" ("CONFIG_ID") 
  ;

  CREATE UNIQUE INDEX "SYS_C0053531" ON "AM_CONFIGURATION_AUD" ("AUDIT_ID") 
  ;



create or replace package "FIN_LOAN_CAL" as
--
-------------------------------------------------------------------------------------------------------------
--
  function calculate_repayment(
    p_loan_amount   in number,  -- loan amount
    p_interest_rate in number,  -- annual interest rate (percentage)
    p_frequency     in number,  -- payment frequency (12 for monthly, 26 for fortnightly, 52 for weekly)
    p_term          in number   -- loan term (in years)
  ) return number;

--
-------------------------------------------------------------------------------------------------------------
--
  procedure calculate_max_property_and_loan (
    p_repayment_amount in number,   -- repayment amount
    p_mode             in number,   -- repayment mode: 12 (monthly), 26 (fortnightly), 52 (weekly)
    p_term             in number,   -- loan term in years
    p_interest_rate    in number,   -- annual interest rate (percentage)
    loan_amt           out varchar2   -- maximum loan amount
  );

--
-------------------------------------------------------------------------------------------------------------
--
end "FIN_LOAN_CAL";
/


create or replace TRIGGER SEC_NAV_MENU_SEQ_TRG -- Create Trigger
    before insert
    on NAV_MENU
    for each row
BEGIN
  :new.ID := NAV_MENU_SEQ.nextval;
END SEC_NAV_MENU_SEQ_TRG;
/
create or replace TRIGGER trg_am_configuration_aud
AFTER INSERT OR UPDATE OR DELETE ON am_configuration
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO am_configuration_aud (
            config_id, config_display_name, description, config_name,
            default_value, config_value, audit_created_date,
            record_id, audit_date, audit_user, audit_product, audit_session,
            operation_type, operation_timestamp
        ) VALUES (
            :NEW.config_id, :NEW.config_display_name, :NEW.description, :NEW.config_name,
            :NEW.default_value, :NEW.config_value, :NEW.audit_created_date,
            :NEW.record_id, :NEW.audit_date, :NEW.audit_user, :NEW.audit_product, :NEW.audit_session,
            'I', SYSTIMESTAMP
        );

    ELSIF UPDATING THEN
        INSERT INTO am_configuration_aud (
            config_id, config_display_name, description, config_name,
            default_value, config_value, audit_created_date,
            record_id, audit_date, audit_user, audit_product, audit_session,
            operation_type, operation_timestamp
        ) VALUES (
            :OLD.config_id, :OLD.config_display_name, :OLD.description, :OLD.config_name,
            :OLD.default_value, :OLD.config_value, :OLD.audit_created_date,
            :OLD.record_id, :OLD.audit_date, :OLD.audit_user, :OLD.audit_product, :OLD.audit_session,
            'U', SYSTIMESTAMP
        );

    ELSIF DELETING THEN
        INSERT INTO am_configuration_aud (
            config_id, config_display_name, description, config_name,
            default_value, config_value, audit_created_date,
            record_id, audit_date, audit_user, audit_product, audit_session,
            operation_type, operation_timestamp
        ) VALUES (
            :OLD.config_id, :OLD.config_display_name, :OLD.description, :OLD.config_name,
            :OLD.default_value, :OLD.config_value, :OLD.audit_created_date,
            :OLD.record_id, :OLD.audit_date, :OLD.audit_user, :OLD.audit_product, :OLD.audit_session,
            'D', SYSTIMESTAMP
        );
    END IF;
END;
/
create or replace TRIGGER trg_customers_audit
AFTER INSERT OR UPDATE OR DELETE ON customers
FOR EACH ROW
DECLARE
    l_changed_columns VARCHAR2(4000);
BEGIN
    -- For INSERT operations
    IF INSERTING THEN
        INSERT INTO customers_aud (
            customer_id, operation_type, operation_user, operation_product, operation_session,salutation,
            first_name, middle_name, surname, dob, phone_no, email, unit_no, street,
            address_1, address_2, suburb, state, postalcode, country, requirement,
            is_partner, no_of_dependants, income_amount, income_frequency, monthly_expenses,loan_amount,priority_level,
            comments, is_subscribed, changed_columns
        ) VALUES (
            :NEW.customer_id, 'I', :NEW.audit_user, :NEW.audit_product, :NEW.audit_session,:NEW.salutation,
            :NEW.first_name, :NEW.middle_name, :NEW.surname, :NEW.dob, :NEW.phone_no, :NEW.email,
            :NEW.unit_no, :NEW.street, :NEW.address_1, :NEW.address_2, :NEW.suburb, :NEW.state,
            :NEW.postalcode, :NEW.country, :NEW.requirement, :NEW.is_partner, :NEW.no_of_dependants,
            :NEW.income_amount, :NEW.income_frequency, :NEW.monthly_expenses,:NEW.loan_amount,:NEW.priority_level, :NEW.comments,
            :NEW.is_subscribed, 'ALL_COLUMNS'
        );
    
    -- For UPDATE operations
    ELSIF UPDATING THEN
        -- Build changed columns list
        l_changed_columns := NULL;
        
        IF :NEW.salutation != :OLD.salutation THEN l_changed_columns := l_changed_columns || 'SALUTATION,'; END IF;
        IF :NEW.first_name != :OLD.first_name THEN l_changed_columns := l_changed_columns || 'FIRST_NAME,'; END IF;
        IF NVL(:NEW.middle_name,'') != NVL(:OLD.middle_name,'') THEN l_changed_columns := l_changed_columns || 'MIDDLE_NAME,'; END IF;
        IF :NEW.surname != :OLD.surname THEN l_changed_columns := l_changed_columns || 'SURNAME,'; END IF;
        -- Continue for all columns...
        
        -- Remove trailing comma if exists
        IF l_changed_columns IS NOT NULL THEN
            l_changed_columns := RTRIM(l_changed_columns, ',');
        END IF;
        
        INSERT INTO customers_aud (
            customer_id, operation_type, operation_user, operation_product, operation_session,salutation,
            first_name, middle_name, surname, dob, phone_no, email, unit_no, street,
            address_1, address_2, suburb, state, postalcode, country, requirement,
            is_partner, no_of_dependants, income_amount, income_frequency, monthly_expenses,loan_amount,priority_level,
            comments, is_subscribed, changed_columns
        ) VALUES (
            :NEW.customer_id, 'U', :NEW.audit_user, :NEW.audit_product, :NEW.audit_session,:NEW.salutation,
            :NEW.first_name, :NEW.middle_name, :NEW.surname, :NEW.dob, :NEW.phone_no, :NEW.email,
            :NEW.unit_no, :NEW.street, :NEW.address_1, :NEW.address_2, :NEW.suburb, :NEW.state,
            :NEW.postalcode, :NEW.country, :NEW.requirement, :NEW.is_partner, :NEW.no_of_dependants,
            :NEW.income_amount, :NEW.income_frequency, :NEW.monthly_expenses,:NEW.loan_amount,:NEW.priority_level, :NEW.comments,
            :NEW.is_subscribed, l_changed_columns
        );
    
    -- For DELETE operations
    ELSIF DELETING THEN
        INSERT INTO customers_aud (
            customer_id, operation_type, operation_user, operation_product, operation_session,salutation,
            first_name, middle_name, surname, dob, phone_no, email, unit_no, street,
            address_1, address_2, suburb, state, postalcode, country, requirement,
            is_partner, no_of_dependants, income_amount, income_frequency, monthly_expenses,loan_amount,priority_level,
            comments, is_subscribed, changed_columns
        ) VALUES (
            :OLD.customer_id, 'D', :OLD.audit_user, :OLD.audit_product, :OLD.audit_session,:OLD.salutation,
            :OLD.first_name, :OLD.middle_name, :OLD.surname, :OLD.dob, :OLD.phone_no, :OLD.email,
            :OLD.unit_no, :OLD.street, :OLD.address_1, :OLD.address_2, :OLD.suburb, :OLD.state,
            :OLD.postalcode, :OLD.country, :OLD.requirement, :OLD.is_partner, :OLD.no_of_dependants,
            :OLD.income_amount, :OLD.income_frequency, :OLD.monthly_expenses, :OLD.loan_amount,:OLD.priority_level,:OLD.comments,
            :OLD.is_subscribed, 'RECORD_DELETED'
        );
    END IF;
END;
/
create or replace TRIGGER trg_customer_id
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    IF :NEW.customer_id IS NULL THEN
        :NEW.customer_id := 'REF' || customer_num_seq.NEXTVAL;
    END IF;
END;
/
create or replace TRIGGER TRG_WM_USER_DELETE
BEFORE DELETE ON WM_USER
FOR EACH ROW
BEGIN
    INSERT INTO WM_USER_AUD (
        AUDIT_ID, RECORD_ID, USER_ID, USERNAME, PASSWORD, FIRST_NAME, LAST_NAME,
        EMAIL, DATE_OF_BIRTH, ACTION_TYPE, AUDIT_DATE, AUDIT_USER,
        AUDIT_CREATED_DATE, AUDIT_CREATED_USER
    ) VALUES (
        WM_USER_AUDIT_ID_SEQ.NEXTVAL, :OLD.RECORD_ID, :OLD.USER_ID, :OLD.USERNAME,
        :OLD.PASSWORD, :OLD.FIRST_NAME, :OLD.LAST_NAME, :OLD.EMAIL, :OLD.DATE_OF_BIRTH,
        'DELETE', CURRENT_TIMESTAMP, USER, :OLD.AUDIT_CREATED_DATE, :OLD.AUDIT_CREATED_USER
    );
END;
/
create or replace TRIGGER TRG_WM_USER_INSERT
BEFORE INSERT ON WM_USER
FOR EACH ROW
BEGIN
    :NEW.RECORD_ID := WM_USER_ID_SEQ.NEXTVAL;
    INSERT INTO WM_USER_AUD (
        AUDIT_ID, RECORD_ID, USER_ID, USERNAME, PASSWORD, FIRST_NAME, LAST_NAME,
        EMAIL, DATE_OF_BIRTH, ACTION_TYPE, AUDIT_DATE, AUDIT_USER,
        AUDIT_CREATED_DATE, AUDIT_CREATED_USER
    ) VALUES (
        WM_USER_AUDIT_ID_SEQ.NEXTVAL, :NEW.RECORD_ID, :NEW.USER_ID, :NEW.USERNAME,
        :NEW.PASSWORD, :NEW.FIRST_NAME, :NEW.LAST_NAME, :NEW.EMAIL, :NEW.DATE_OF_BIRTH,
        'INSERT', CURRENT_TIMESTAMP, USER, :NEW.AUDIT_CREATED_DATE, :NEW.AUDIT_CREATED_USER
    );
END;
/
create or replace TRIGGER TRG_WM_USER_UPDATE
BEFORE UPDATE ON WM_USER
FOR EACH ROW
BEGIN
    INSERT INTO WM_USER_AUD (
        AUDIT_ID, RECORD_ID, USER_ID, USERNAME, PASSWORD, FIRST_NAME, LAST_NAME,
        EMAIL, DATE_OF_BIRTH, ACTION_TYPE, AUDIT_DATE, AUDIT_USER,
        AUDIT_CREATED_DATE, AUDIT_CREATED_USER
    ) VALUES (
        WM_USER_AUDIT_ID_SEQ.NEXTVAL, :NEW.RECORD_ID, :NEW.USER_ID, :NEW.USERNAME,
        :NEW.PASSWORD, :NEW.FIRST_NAME, :NEW.LAST_NAME, :NEW.EMAIL, :NEW.DATE_OF_BIRTH,
        'UPDATE', CURRENT_TIMESTAMP, USER, :NEW.AUDIT_CREATED_DATE, :NEW.AUDIT_CREATED_USER
    );
END;
/




create or replace package body "FIN_LOAN_CAL" as

function calculate_repayment (
    p_loan_amount   in number,  -- loan amount
    p_interest_rate in number,  -- annual interest rate (percentage)
    p_frequency     in number,  -- payment frequency (12 for monthly, 26 for fortnightly, 52 for weekly)
    p_term          in number   -- loan term (in years)
  ) return number is
    -- Variables
    v_periodic_rate number;
    v_total_payments number;
    v_repayment number;
    v_result varchar2(4000);
  begin
    -- Calculate periodic interest rate
    v_periodic_rate := p_interest_rate / 100 / p_frequency;

    -- Calculate total number of payments
    v_total_payments := p_term * p_frequency;

    -- Calculate repayment using the single formula
    v_repayment := (p_loan_amount * v_periodic_rate * power(1 + v_periodic_rate, v_total_payments)) /
                   (power(1 + v_periodic_rate, v_total_payments) - 1);

    -- Format result
    v_result := round(v_repayment);

    return v_result;
  end calculate_repayment;



--
-------------------------------------------------------------------------------------------------------------
--

  procedure calculate_max_property_and_loan (
    p_repayment_amount in number,   -- repayment amount
    p_mode             in number,   -- repayment mode: 12 (monthly), 26 (fortnightly), 52 (weekly)
    p_term             in number,   -- loan term in years
    p_interest_rate    in number,   -- annual interest rate (percentage)
    loan_amt           out varchar2   -- maximum loan amount
  ) is
    -- variables for calculation
    v_frequency number;            -- repayment frequency
    v_periodic_rate number;        -- periodic interest rate
    v_total_payments number;       -- total number of payments
  begin
    -- validate repayment mode
    if p_mode not in (12, 26, 52) then
      raise_application_error(-20001, 'Invalid repayment mode. Use 12 (monthly), 26 (fortnightly), or 52 (weekly).');
    end if;

    -- assign repayment frequency directly from mode
    v_frequency := p_mode;

    -- calculate periodic interest rate
    v_periodic_rate := p_interest_rate / 100 / v_frequency;

    -- calculate total number of payments
    v_total_payments := p_term * v_frequency;

    -- calculate loan amount (maximum borrowing capacity)
    loan_amt := round((p_repayment_amount * (power(1 + v_periodic_rate, v_total_payments) - 1)) /
                (v_periodic_rate * power(1 + v_periodic_rate, v_total_payments)));
     loan_amt :=  to_char(loan_amt, '$999G999G999G990D00');
  end calculate_max_property_and_loan;
--
-------------------------------------------------------------------------------------------------------------
--  
end "FIN_LOAN_CAL";
/




































