CREATE TABLE dbo.stg_Customer
(
    Customer_id     INT         NOT NULL,
    Age             INT         NOT NULL,
    Gender          INT         NOT NULL,
    Newsletter      INT         NOT NULL
);

CREATE TABLE dbo.stg_Sales_Record
(
    Txn_ID          INT             NOT NULL,
    Customer_id     INT             NOT NULL,
    Purchase_DATE   DATE            NOT NULL,
    Revenue_Total   DECIMAL(18,2)   NOT NULL,
    N_Purchases     INT             NOT NULL,
    Purchase_VALUE  DECIMAL(18,2)   NOT NULL,
    Pay_Method      INT             NOT NULL,
    Time_Spent      INT             NOT NULL,
    Browser         INT             NOT NULL,
    Voucher         INT             NOT NULL
);

CREATE TABLE dbo.stg_Gender_Lookup
(
    Gender          INT          NOT NULL PRIMARY KEY,
    Gender_Label    VARCHAR(50)  NOT NULL
);

CREATE TABLE dbo.stg_Newsletter_Lookup
(
    Newsletter          INT          NOT NULL PRIMARY KEY,
    Newsletter_Label    VARCHAR(50)  NOT NULL
);

CREATE TABLE dbo.stg_Payment_Lookup
(
    Pay_Method              INT          NOT NULL PRIMARY KEY,
    Payment_Method_Label    VARCHAR(50)  NOT NULL
);

CREATE TABLE dbo.stg_Browser_Lookup
(
    Browser         INT          NOT NULL PRIMARY KEY,
    Browser_Label   VARCHAR(50)  NOT NULL
);

CREATE TABLE dbo.stg_Voucher_Lookup
(
    Voucher         INT          NOT NULL PRIMARY KEY,
    Voucher_Label   VARCHAR(50)  NOT NULL
);