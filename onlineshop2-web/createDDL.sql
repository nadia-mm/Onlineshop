CREATE TABLE ONLINESHOP.CUSTOMER (ID NUMBER(19) NOT NULL, EMAIL VARCHAR2(255) NULL, PASSWORD VARCHAR2(255) NULL, PRIMARY KEY (ID))
CREATE TABLE ONLINESHOP.ITEM (ID NUMBER(19) NOT NULL, DESCRIPTION VARCHAR2(255) NULL, FOTO BLOB NULL, PRICE NUMBER(19,4) NULL, SOLD TIMESTAMP NULL, TITLE VARCHAR2(255) NULL, BUYER_ID NUMBER(19) NULL, SELLER_ID NUMBER(19) NULL, PRIMARY KEY (ID))
ALTER TABLE ONLINESHOP.ITEM ADD CONSTRAINT FK_ITEM_BUYER_ID FOREIGN KEY (BUYER_ID) REFERENCES ONLINESHOP.CUSTOMER (ID)
ALTER TABLE ONLINESHOP.ITEM ADD CONSTRAINT FK_ITEM_SELLER_ID FOREIGN KEY (SELLER_ID) REFERENCES ONLINESHOP.CUSTOMER (ID)
CREATE SEQUENCE ONLINESHOP.SEQ_CUSTOMER START WITH 1
CREATE SEQUENCE ONLINESHOP.SEQ_ITEM START WITH 1
