/*
Project: E-Commerce Sales Analytics
Analysis: Top 10 customers by spending on completed orders.
Definition: Customer spend = quantity * listed unit price.
*/
USE EcommerceAnalytics;
GO

SELECT TOP (10)
    c.customer_id,
    c.country,
    COUNT(DISTINCT o.order_id) AS TotalOrders,
    SUM(od.quantity * od.price) AS TotalSpent,
    SUM(od.quantity) AS TotalUnitsPurchased,
    AVG(CAST(od.price AS DECIMAL(12, 2))) AS AverageUnitPrice
FROM dbo.EcommerceCustomers AS c
INNER JOIN dbo.EcommerceOrders AS o
    ON c.customer_id = o.customer_id
INNER JOIN dbo.EcommerceOrderDetails AS od
    ON o.order_id = od.order_id
WHERE o.status = 'Completed'
GROUP BY
    c.customer_id,
    c.country
ORDER BY TotalSpent DESC;
GO
