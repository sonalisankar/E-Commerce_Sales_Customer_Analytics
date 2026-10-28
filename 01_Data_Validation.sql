/*
Project: E-Commerce Sales Analytics
Purpose: Validate imported source tables before analysis.
Database: EcommerceAnalytics
Expected row counts: Customers 300, Products 50, Orders 1,000, OrderDetails 2,000.
*/
USE EcommerceAnalytics;
GO

-- 1. Verify row counts for all four imported tables.
SELECT 'EcommerceCustomers' AS TableName, COUNT(*) AS TotalRows
FROM dbo.EcommerceCustomers
UNION ALL
SELECT 'EcommerceProducts', COUNT(*)
FROM dbo.EcommerceProducts
UNION ALL
SELECT 'EcommerceOrders', COUNT(*)
FROM dbo.EcommerceOrders
UNION ALL
SELECT 'EcommerceOrderDetails', COUNT(*)
FROM dbo.EcommerceOrderDetails;
GO

-- 2. Review order status counts.
SELECT
    status,
    COUNT(*) AS OrderCount
FROM dbo.EcommerceOrders
GROUP BY status
ORDER BY OrderCount DESC;
GO

-- 3. Check for null key fields in orders and order details.
SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS NullOrderIDs,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS NullCustomerIDs
FROM dbo.EcommerceOrders;
GO

SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS NullOrderIDs,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS NullProductIDs,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS NullQuantities,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS NullPrices
FROM dbo.EcommerceOrderDetails;
GO
