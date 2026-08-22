CREATE TABLE ECOMMERCE_DB.RAW.ORDERS (
    order_id INTEGER,//NUMBER ORDER
    customer_id INTEGER,//WHO ORDER
    order_date DATE,// WHEM ORDER
    product_name VARCHAR,
    category VARCHAR,
    quantity INTEGER,
    unit_price NUMBER(10, 2)
);
