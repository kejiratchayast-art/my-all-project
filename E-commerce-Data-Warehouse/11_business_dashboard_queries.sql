-- 1. Overall business KPI
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS total_items_sold,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(quantity * unit_price) AS average_order_value
FROM ECOMMERCE_DB.RAW.ORDERS;


-- 2. Top customers
SELECT
    c.customer_name,
    c.country,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * o.unit_price) AS total_revenue
FROM ECOMMERCE_DB.RAW.ORDERS o
JOIN ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS c
    ON o.customer_id = c.customer_id
GROUP BY
    c.customer_name,
    c.country
ORDER BY total_revenue DESC;


-- 3. Top products
SELECT
    product_name,
    category,
    SUM(quantity) AS units_sold,
    SUM(quantity * unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY
    product_name,
    category
ORDER BY revenue DESC
LIMIT 10;


-- 4. Revenue by category
SELECT
    category,
    SUM(quantity) AS units_sold,
    SUM(quantity * unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY category
ORDER BY revenue DESC;


-- 5. Revenue by country
SELECT
    c.country,
    SUM(o.quantity * o.unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS o
JOIN ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS c
    ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY revenue DESC;
