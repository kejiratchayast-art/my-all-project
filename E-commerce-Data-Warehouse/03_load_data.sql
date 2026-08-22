SHOW TABLES IN SCHEMA ECOMMERCE_DB.RAW;

INSERT INTO ECOMMERCE_DB.RAW.CUSTOMERS
    (customer_id, customer_name, email, country)
VALUES
    (1, 'fei', 'Hemmie0505@gmail.com', 'Slovakia'),
    (2, 'netto', 'nettosan9970@gmail.com', 'Hong Kong'),
    (3, 'maiza', 'mairockza555@gmail.com', 'Thailand'),
    (4, 'Nekisama', 'NakisamaInwza@gmail.com', 'Japan'),
    (5, 'piano', 'piano8899@gmail.com', 'Singapore');

    SELECT * 
    FROM ECOMMERCE_DB.RAW.CUSTOMERS;
