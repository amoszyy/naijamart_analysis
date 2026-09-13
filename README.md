 # NaijaMart Sales Analytics

An end-to-end sales analytics project analysing 20,000 NaijaMart transactions to uncover insights into revenue, profitability, customers, products, and sales performance.

## Tools Used

- Excel — Data cleaning and preparation
- MySQL — Data transformation, validation and analysis
- Power BI — Data modelling, DAX and interactive dashboard

## Project Workflow

**Excel → MySQL → Power BI → Business Insights**

### Key Analysis

- Revenue and profit by product category
- Top 5 customers by revenue
- Top 5 products by revenue
- Monthly revenue trends
- Transaction and quantity analysis
- Discount and sales performance
- Profitability analysis

## Dashboard

![NaijaMart Sales Dashboard](dashboard/dashboard_screenshot.png)

## Key Insights

- Laptops were the strongest category by both revenue and absolute profit.
- Revenue and sales volume do not always tell the same story across products and categories.
- A small group of customers contributes significantly to overall revenue.
- Revenue performance varies across the year, highlighting periods of stronger and weaker sales activity.

## Repository Structure

```text
├── dashboard/
│   ├── NaijaMart_Sales_Dashboard.pbix
│   └── dashboard_screenshot.png
│
├── sql/
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
└── README.md
