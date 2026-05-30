
USE OnlineShop_DW;
GO

DELETE FROM dbo.FactSales;
DELETE FROM dbo.DimDate;
GO

SELECT COUNT(*) FROM dbo.DimDate;
SELECT COUNT(*) FROM dbo.FactSales;


SELECT *
FROM dbo.FactSales
WHERE Date_Key IS NULL
   OR Customer_Key IS NULL
   OR Payment_Key IS NULL
   OR Browser_Key IS NULL
   OR Voucher_Key IS NULL;


   SELECT COUNT(*) AS TotalRows
FROM dbo.FactSales;



SELECT * 
FROM dbo.FactSales;


SELECT
    COUNT(accm_txn_complete_time) AS CompleteTime_Filled,
    COUNT(txn_process_time_hours) AS ProcessHours_Filled
FROM dbo.FactSales;






SELECT
    Sales_Key,
    Txn_ID,
    accm_txn_create_time,
    accm_txn_complete_time,
    txn_process_time_hours
FROM dbo.FactSales
WHERE accm_txn_complete_time IS NOT NULL
   OR txn_process_time_hours IS NOT NULL;

UPDATE dbo.FactSales
SET
    accm_txn_complete_time = DATEADD(HOUR, 24, accm_txn_create_time),
    txn_process_time_hours = DATEDIFF(
        HOUR,
        accm_txn_create_time,
        DATEADD(HOUR, 24, accm_txn_create_time)
    )
WHERE accm_txn_complete_time IS NULL;



UPDATE dbo.FactSales
SET
    accm_txn_complete_time = DATEADD(HOUR, 24, accm_txn_create_time),
    txn_process_time_hours = DATEDIFF(
        HOUR,
        accm_txn_create_time,
        DATEADD(HOUR, 24, accm_txn_create_time)
    );


SELECT TOP 50
    Sales_Key,
    Txn_ID,
    accm_txn_create_time,
    accm_txn_complete_time,
    txn_process_time_hours
FROM dbo.FactSales
ORDER BY Sales_Key;