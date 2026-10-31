 E-Commerce Sales Analytics

 Project Overview

This project analyzes e-commerce sales data using **SQL Server, Power BI, and Excel/Python** to evaluate sales performance, customer purchasing behavior, product performance, and revenue trends.

The goal is to transform raw transactional data into meaningful business insights through data validation, SQL queries, data analysis, and interactive dashboard development.

The project focuses on completed sales to provide a clearer picture of actual sales performance.

 Business Objectives

- Analyze overall sales performance and completed revenue.
- Identify top-performing products and product categories.
- Evaluate revenue distribution across countries.
- Examine monthly sales trends and fluctuations.
- Measure customer purchasing behavior and repeat customer activity.
- Develop an interactive Power BI dashboard to communicate findings.

 Tools and Technologies

| Tool | Purpose |
|---|---|
| SQL Server Management Studio (SSMS) | Data validation, querying, aggregation, and analysis |
| Power BI Desktop | Interactive dashboard development and visualization |
| DAX | KPI calculations and analytical measures |
| Python | Initial data exploration and analysis |
| Excel / CSV | Data storage and preparation |
| GitHub | Version control and project documentation |

Dataset Overview

The project uses four primary datasets:

| Dataset | Description |
|---|---|
| Customers | Customer IDs, countries, and signup dates |
| Orders | Order IDs, customer IDs, order dates, and order statuses |
| Order Items | Order IDs, product IDs, quantities, and prices |
| Products | Product IDs, product names, and categories |

The SQL Server database contains:

- 300 customers
- 1,000 orders
- 2,000 order-detail records
- 50 products

## SQL Analysis

SQL was used to validate the datasets, examine relationships between tables, and calculate key business metrics.

The analysis included:

1. **Data Validation:** Verified table structures, record counts, and data consistency.
2. **Revenue by Category:** Calculated revenue across product categories.
3. **Monthly Revenue Trends:** Examined revenue patterns throughout the year.
4. **Top 10 Products:** Identified products generating the highest revenue.
5. **Customer Analysis:** Evaluated customer spending and purchasing frequency.
6. **Repeat Customer Analysis:** Examined the proportion of customers making repeat purchases.
7. **Order Status Analysis:** Compared completed, cancelled, and returned orders.

## Key Performance Indicators (KPIs)

The Power BI dashboard includes the following metrics:

| KPI | Result |
|---|---:|
| Completed Revenue | $311,111 |
| Total Orders | 1,000 |
| Completed Orders | 805 |
| Total Customers | 300 |
| Completed Units Sold | 4,848 |
| Average Order Value | $447.64 |
| Repeat Customer Rate | 82.0% |

**Data interpretation note:** There are 805 completed orders in the orders table, but only 695 completed orders have matching order-detail records. The $311,111 completed revenue and $447.64 average order value are based on those 695 matched completed orders. This distinction is important when interpreting the dashboard.

The repeat customer rate is the value displayed in the Power BI dashboard; its calculation should be interpreted according to the measure's underlying customer population and definition.

## Key Business Findings

### 1. Product Category Performance
Hair generated the highest completed revenue among the product categories, followed by Makeup, Body, and Skin.

### 2. Geographic Performance
Italy generated the highest completed revenue, followed by Spain, Morocco, France, and Germany.

### 3. Monthly Sales Trends
Completed revenue varied throughout the year. January and October were among the strongest months, while February, May, June, and September showed comparatively lower revenue.

### 4. Product Performance
The Top 10 Products by Revenue visualization identifies the products contributing most to completed sales, helping highlight important products for business planning.

### 5. Customer Purchasing Behavior
Customer-level analysis provides insight into repeat purchasing behavior and the importance of customer retention.

## Power BI Dashboard

The interactive dashboard includes:

- Completed Revenue KPI
- Total Orders and Completed Orders
- Total Customers
- Average Order Value
- Repeat Customer Rate
- Completed Units Sold
- Revenue by Category
- Monthly Revenue Trend
- Top 10 Products by Revenue
- Revenue by Country

Interactive date and country slicers allow users to explore sales performance across different periods and geographic markets.

**Dashboard Screenshot:** Add your final Power BI dashboard screenshot to the repository and display it here.

## Project Structure

```text
ecommerce-sales-analytics/
│
├── data/
│   └── (Source datasets, if included)
│
├── sql/
│   ├── 01_Data_Validation.sql
│   ├── 02_Revenue_by_Category.sql
│   ├── 03_Monthly_Revenue.sql
│   ├── 04_Top_10_Products.sql
│   ├── 05_Top_10_Customers.sql
│   └── 06_Repeat_Customer_Rate.sql
│
├── dashboard/
│   ├── Ecommerce_Sales_Analytics.pbix
│   └── dashboard_screenshot.png
│
└── README.md
```

## Skills Demonstrated

- SQL querying and data aggregation
- Relational database analysis
- Data cleaning and validation
- Data modeling
- DAX measures and calculated KPIs
- Business intelligence and dashboard development
- Data visualization
- Customer and product performance analysis
- Translating data into actionable business insights
- Technical documentation and version control with GitHub

## Conclusion

This project demonstrates how transactional e-commerce data can be transformed into actionable business intelligence. By combining SQL-based analysis with Power BI visualization, the project provides insight into revenue performance, customer behavior, product performance, and geographic sales trends.

The resulting dashboard offers a consolidated view of completed sales performance and supports data-driven business decision-making.
