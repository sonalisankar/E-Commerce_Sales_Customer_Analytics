/*
Project: E-Commerce Sales Analytics
Analysis: Revenue by product category for completed orders.
Definition: Revenue = quantity * listed unit price.
Note: Discounts, taxes, shipping, and returns are not applied in this calculation.
*/
USE EcommerceAnalytics;
GO

SELECT
    p.category,
    SUM(od.quantity * od.price) AS TotalRevenue
FROM dbo.EcommerceOrderDetails AS od
INNER JOIN dbo.EcommerceProducts AS p
    ON od.product_id = p.product_id
INNER JOIN dbo.EcommerceOrders AS o
    ON od.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.category
ORDER BY TotalRevenue DESC;
GO
