-- Revenue by product
SELECT
    product_name,
    SUM(quantity) AS total_quantity,
    SUM(quantity * unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY product_name
ORDER BY revenue DESC;


-- Revenue by category
SELECT
    category,
    SUM(quantity) AS total_quantity,
    SUM(quantity * unit_price) AS revenue
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY category
ORDER BY revenue DESC;


-- Top-selling products by quantity
SELECT
    product_name,
    SUM(quantity) AS total_quantity
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY product_name
ORDER BY total_quantity DESC;


-- Product performance
SELECT
    product_name,
    category,
    COUNT(*) AS number_of_orders,
    SUM(quantity) AS total_quantity,
    SUM(quantity * unit_price) AS total_revenue
FROM ECOMMERCE_DB.RAW.ORDERS
GROUP BY
    product_name,
    category
ORDER BY total_revenue DESC;
