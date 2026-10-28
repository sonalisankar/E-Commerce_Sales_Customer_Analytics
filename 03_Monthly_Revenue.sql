/*
Project: E-Commerce Sales Analytics
Analysis: Monthly revenue and distinct completed orders.
Definition: Revenue = quantity * listed unit price.
*/
USE EcommerceAnalytics;
GO

SELECT
    YEAR(o.order_date) AS OrderYear,
    MONTH(o.order_date) AS OrderMonth,
    DATENAME(MONTH, o.order_date) AS MonthName,
    SUM(od.quantity * od.price) AS TotalRevenue,
    COUNT(DISTINCT o.order_id) AS TotalOrders
FROM dbo.EcommerceOrders AS o
INNER JOIN dbo.EcommerceOrderDetails AS od
    ON o.order_id = od.order_id
WHERE o.status = 'Completed'
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date),
    DATENAME(MONTH, o.order_date)
ORDER BY
    OrderYear,
    OrderMonth;
GO
