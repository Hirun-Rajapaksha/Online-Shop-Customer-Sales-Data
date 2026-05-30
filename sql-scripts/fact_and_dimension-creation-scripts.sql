CREATE TABLE dbo.DimDate
(
    Date_Key        INT          NOT NULL PRIMARY KEY,
    Full_Date       DATE         NOT NULL UNIQUE,
    Day_No          TINYINT      NOT NULL,
    Month_No        TINYINT      NOT NULL,
    Month_Name      VARCHAR(20)  NOT NULL,
    Quarter_No      TINYINT      NOT NULL,
    Year_No         SMALLINT     NOT NULL
);

CREATE TABLE dbo.DimCustomer
(
    Customer_Key    INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Customer_id     INT               NOT NULL,
    Age             INT               NOT NULL,
    Age_Band        VARCHAR(20)       NOT NULL,
    Gender          VARCHAR(20)       NOT NULL,
    Newsletter      VARCHAR(20)       NOT NULL,
    Start_Date      DATE              NOT NULL,
    End_Date        DATE              NULL,
    Is_Current      BIT               NOT NULL DEFAULT 1
);

CREATE TABLE dbo.DimPayment
(
    Payment_Key             INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Pay_Method              INT               NOT NULL,
    Payment_Method_Label    VARCHAR(50)       NOT NULL,
    CONSTRAINT UQ_DimPayment UNIQUE (Pay_Method)
);

CREATE TABLE dbo.DimBrowser
(
    Browser_Key     INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Browser         INT               NOT NULL,
    Browser_Label   VARCHAR(50)       NOT NULL,
    CONSTRAINT UQ_DimBrowser UNIQUE (Browser)
);

CREATE TABLE dbo.DimVoucher
(
    Voucher_Key     INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Voucher         INT               NOT NULL,
    Voucher_Label   VARCHAR(50)       NOT NULL,
    CONSTRAINT UQ_DimVoucher UNIQUE (Voucher)
);

CREATE TABLE dbo.FactSales
(
    Sales_Key                BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Txn_ID                   INT                  NOT NULL,
    Date_Key                 INT                  NOT NULL,
    Customer_Key             INT                  NOT NULL,
    Payment_Key              INT                  NOT NULL,
    Browser_Key              INT                  NOT NULL,
    Voucher_Key              INT                  NOT NULL,
    Revenue_Total            DECIMAL(18,2)        NOT NULL,
    Purchase_VALUE           DECIMAL(18,2)        NOT NULL,
    N_Purchases              INT                  NOT NULL,
    Time_Spent               INT                  NOT NULL,
    accm_txn_create_time     DATETIME             NULL,
    accm_txn_complete_time   DATETIME             NULL,
    txn_process_time_hours   INT                  NULL,

    CONSTRAINT FK_FactSales_DimDate
        FOREIGN KEY (Date_Key) REFERENCES dbo.DimDate(Date_Key),

    CONSTRAINT FK_FactSales_DimCustomer
        FOREIGN KEY (Customer_Key) REFERENCES dbo.DimCustomer(Customer_Key),

    CONSTRAINT FK_FactSales_DimPayment
        FOREIGN KEY (Payment_Key) REFERENCES dbo.DimPayment(Payment_Key),

    CONSTRAINT FK_FactSales_DimBrowser
        FOREIGN KEY (Browser_Key) REFERENCES dbo.DimBrowser(Browser_Key),

    CONSTRAINT FK_FactSales_DimVoucher
        FOREIGN KEY (Voucher_Key) REFERENCES dbo.DimVoucher(Voucher_Key)
);