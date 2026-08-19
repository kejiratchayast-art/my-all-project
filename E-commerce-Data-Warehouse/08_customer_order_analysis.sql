SELECT
    c.customer_id,
    c.customer_name,
    c.country,
    o.order_id,
    o.order_date,
    o.product_name,
    o.category,
    o.quantity,
    o.unit_price,
    o.quantity * o.unit_price AS order_amount
FROM ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS c
JOIN ECOMMERCE_DB.RAW.ORDERS o
    ON c.customer_id = o.customer_id
ORDER BY o.order_date;
