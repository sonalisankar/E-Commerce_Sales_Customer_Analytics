/*
Project: E-Commerce Sales Analytics
Analysis: Repeat-customer rate among customers with at least one completed order.
Definition: A repeat customer has at least two distinct completed orders.
Denominator: Customers with one or more completed orders (not all registered customers).
*/
USE EcommerceAnalytics;
GO

WITH CustomerOrderCounts AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS TotalOrders
    FROM dbo.EcommerceOrders
    WHERE status = 'Completed'
    GROUP BY customer_id
)
SELECT
    COUNT(*) AS TotalCustomersWithCompletedOrders,
    SUM(CASE WHEN TotalOrders = 1 THEN 1 ELSE 0 END) AS OneTimeCustomers,
    SUM(CASE WHEN TotalOrders >= 2 THEN 1 ELSE 0 END) AS RepeatCustomers,
    CAST(
        100.0 * SUM(CASE WHEN TotalOrders >= 2 THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5, 2)
    ) AS RepeatCustomerRatePercent,
    SUM(TotalOrders) AS TotalCompletedOrders
FROM CustomerOrderCounts;
GO
