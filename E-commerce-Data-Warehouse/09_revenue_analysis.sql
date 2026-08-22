-- Total revenue
SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM ECOMMERCE_DB.RAW.ORDERS;


-- Revenue by customer
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * o.unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS o
JOIN ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS c
    ON o.customer_id = c.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY revenue DESC;


-- Revenue by country
SELECT
    c.country,
    SUM(o.quantity * o.unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS o
JOIN ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS c
    ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY revenue DESC;


-- Daily revenue
SELECT
    order_date,
    SUM(quantity * unit_price) AS daily_revenue
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY order_date
ORDER BY order_date;


-- Average order value
SELECT
    AVG(quantity * unit_price) AS average_order_value
FROM ECOMMERCE_DB.RAW.ORDERS;
