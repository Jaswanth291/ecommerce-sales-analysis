-- 1. Order status analysis
SELECT order_status, COUNT(*) AS total_orders
        FROM olist_orders_dataset
        GROUP BY order_status
        ORDER BY total_orders DESC;

-- 2. Monthly order trends
SELECT
            SUBSTR(order_purchase_timestamp, 1, 7) AS order_month,
            COUNT(*) AS total_orders
        FROM olist_orders_dataset
        WHERE order_purchase_timestamp IS NOT NULL
        GROUP BY SUBSTR(order_purchase_timestamp, 1, 7)
        ORDER BY order_month;

-- 3. Top 10 product categories by sales
SELECT
            p.product_category_name,
            ROUND(SUM(i.price), 2) AS product_sales
        FROM olist_order_items_dataset AS i
        JOIN olist_products_dataset AS p
            ON i.product_id = p.product_id
        GROUP BY p.product_category_name
        ORDER BY product_sales DESC
        LIMIT 10;

-- 4. Payment method analysis
SELECT
            payment_type,
            COUNT(*) AS payment_records,
            ROUND(SUM(payment_value), 2) AS total_payment_value
        FROM olist_order_payments_dataset
        GROUP BY payment_type
        ORDER BY total_payment_value DESC;

-- 5. Average order value
SELECT
            ROUND(SUM(payment_value) / COUNT(DISTINCT order_id), 2)
                AS average_order_value
        FROM olist_order_payments_dataset;

