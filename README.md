# NaijaMart Sales Analytics

An end-to-end sales analytics project analysing 20,000 NaijaMart transactions to uncover insights into revenue, profitability, customers, products and sales performance.

## Dashboard

![NaijaMart Sales Dashboard](dashboard/dashboard_screenshot.png)

## Project Overview

This project demonstrates an end-to-end analytics workflow, from raw transactional data preparation to SQL analysis, Power BI data modelling and dashboard development.

**Workflow:** Excel → MySQL → Power BI → Business Insights

## Tools Used

- **Excel** — Initial data cleaning and preparation
- **MySQL** — Data transformation, validation and analysis
- **Power BI** — Data modelling, DAX measures and interactive visualisation

## Business Questions

- Which product categories generate the most revenue and profit?
- Which products and customers contribute the most revenue?
- How does revenue change over time?
- Which categories have the strongest profit margins?
- How concentrated is revenue among the largest customers?
- How do discounts relate to sales and profitability?

## Key Business Insights

1. **Revenue concentration:** Laptops and Televisions contribute approximately 35% and 27% of total revenue respectively, accounting for about 62% combined.
2. **Revenue stability:** Monthly revenue remained above ₦2 billion throughout the year, indicating relatively consistent sales performance.
3. **Category profitability:** Home Appliances and Laptops recorded the strongest profit margins at approximately 25%.
4. **Revenue vs profitability:** Sony Television 17 was the highest-revenue product among the top five but had a lower margin than several products with lower revenue.
5. **Customer concentration:** The top five customers contributed approximately 2.7% of total revenue, indicating that overall revenue is not heavily dependent on a small group of customers.

For the detailed analysis and recommendations, see [`insights/business_insights.md`](insights/business_insights.md).

## Dashboard Features

- KPI cards for revenue, profit, transactions, quantity sold, profit margin, average order value and average discount
- Revenue and profit by product category
- Monthly revenue trend
- Top 5 customers by revenue
- Top 5 products by revenue
- Interactive filters for order date, product category, salesperson and payment method

## Data Model

The Power BI model uses a star-schema approach with the transactions table as the central fact table and customer, product and salesperson tables as dimensions.

## SQL Analysis

The SQL scripts are organised into three stages:

- [`01_data_cleaning.sql`](sql/01_data_cleaning.sql) — Data preparation and transformation
- [`02_data_validation.sql`](sql/02_data_validation.sql) — Data-quality and relationship checks
- [`03_analysis_queries.sql`](sql/03_analysis_queries.sql) — Business analysis queries

## Repository Structure

```text
NaijaMart-Sales-Analytics/
│
├── dashboard/
│   ├── NaijaMart_Sales_Dashboard.pbix
│   └── dashboard_screenshot.png
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_data_validation.sql
│   └── 03_analysis_queries.sql
│
├── insights/
│   └── business_insights.md
│
└── README.md
```

## Objective

The objective of this project was to apply data cleaning, SQL analysis, relational data modelling, DAX and data visualisation to transform transactional data into actionable business insights.
