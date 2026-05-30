select * from FactSales

USE OnlineShop_DW;
GO

SELECT COUNT(*) AS FactSales_Count FROM dbo.FactSales;
SELECT COUNT(*) AS DimBrowser_Count FROM dbo.DimBrowser;
SELECT COUNT(*) AS DimCustomer_Count FROM dbo.DimCustomer;
SELECT COUNT(*) AS DimDate_Count FROM dbo.DimDate;
SELECT COUNT(*) AS DimPayment_Count FROM dbo.DimPayment;
SELECT COUNT(*) AS DimVoucher_Count FROM dbo.DimVoucher;

USE OnlineShop_DW;
GO

SELECT 
    COUNT(*) AS TotalRows,
    COUNT(accm_txn_complete_time) AS CompleteTime_Filled,
    COUNT(txn_process_time_hours) AS ProcessHours_Filled
FROM dbo.FactSales;

USE OnlineShop_StagingDB;
GO

SELECT COUNT(*) AS TotalRows
FROM dbo.stg_Fact_Completion_Update;

SELECT TOP 50 *
FROM dbo.stg_Fact_Completion_Update;

USE OnlineShop_DW;
GO

SELECT COUNT(*) AS MatchingRows
FROM dbo.FactSales F
INNER JOIN OnlineShop_StagingDB.dbo.stg_Fact_Completion_Update S
    ON F.Txn_ID = S.Txn_ID;

USE OnlineShop_DW;
GO

SELECT *
FROM dbo.FactSales
WHERE accm_txn_complete_time IS NOT NULL
   OR txn_process_time_hours IS NOT NULL;