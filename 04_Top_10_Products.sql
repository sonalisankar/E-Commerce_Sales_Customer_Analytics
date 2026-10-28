/*
Project: E-Commerce Sales Analytics
Analysis: Top 10 products ranked by revenue from completed orders.
Definition: Revenue = quantity * listed unit price.
*/
USE EcommerceAnalytics;
GO

SELECT TOP (10)
    p.product_id,
    p.product_name,
    p.category,
    SUM(od.quantity * od.price) AS TotalRevenue,
    SUM(od.quantity) AS UnitsSold,
    COUNT(DISTINCT od.order_id) AS NumberOfOrders
FROM dbo.EcommerceOrderDetails AS od
INNER JOIN dbo.EcommerceProducts AS p
    ON od.product_id = p.product_id
INNER JOIN dbo.EcommerceOrders AS o
    ON od.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY TotalRevenue DESC;
GO
