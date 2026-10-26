# E-Commerce Sales Analysis and Business Insights

## Project Overview
An exploratory data analysis project using the Brazilian E-Commerce Public Dataset by Olist. The project examines order volume, payment value, payment methods, product-category item sales, monthly trends, and delivery performance.

## Business Questions
- How many orders and unique customers are represented?
- How does recorded payment value change by month?
- Which payment methods account for the most payment value?
- Which product categories have the highest item-price sales?
- How long does delivery take, and what share of eligible delivered orders arrived late?

## Key Findings
- **Orders:** 99,441
- **Unique customers:** 96,096 (`customer_unique_id`)
- **Recorded payment value:** R$ 16,008,872.12
- **Largest payment method by value:** credit card, R$ 12,542,084.19
- **Highest payment-value month:** November 2017, R$ 1,194,882.80
- **Average delivery time:** 12.56 days
- **Late delivery rate:** 8.11% among delivered orders with usable actual and estimated delivery dates (96,470 orders)

## Tools
- Python
- Pandas
- Matplotlib
- SQLite / SQL

## Analysis Included
1. Dataset loading and basic exploration
2. Business KPI calculations
3. Monthly payment-value trend
4. Product-category sales using order-item prices
5. Payment method analysis
6. Delivery-time and late-delivery analysis
7. SQL queries for order status, monthly orders, category sales, payment methods, and average order value

## Project Files
- `analysis.ipynb` — analysis notebook
- `sql_queries.sql` — SQL business queries
- `olist_analysis.db` — SQLite database for the main tables
- `business_insights.txt` — key metrics
- `monthly_sales.csv` — monthly recorded payment values
- `payment_methods.csv` — payment-method summary
- `delivery_analysis.csv` — delivery-level analysis output

## Important Definitions and Limitations
- Recorded payment value is **not profit**; costs and expenses are not included.
- Product-category sales are summed from order-item `price` and **exclude freight**.
- Delivery performance uses delivered orders with non-null actual and estimated delivery dates.
- Missing values are not automatically removed; they should be assessed based on their meaning.
- The Olist dataset is historical, so findings describe the dataset period, not current e-commerce performance.

## Dataset
Brazilian E-Commerce Public Dataset by Olist: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
