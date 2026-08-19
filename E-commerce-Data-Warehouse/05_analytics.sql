//****Where are the customers coming from, and how many people are there from each country?***

SELECT 
    country,
    COUNT(*) AS customer_count
FROM ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS
GROUP BY country
ORDER BY customer_count DESC;


//(View the total number of customers.)

SELECT
    COUNT(*) AS total_customers
FROM ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS;

//(See the countries with customers.)

SELECT DISTINCT
    country
FROM ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS
ORDER BY country;

//use CASE WHEN//business classification)

SELECT 
    customer_name,
    country,
    CASE
        WHEN country = 'THAILAND' THEN 'Domestic'
        ELSE 'International'
    END AS customer_type
FROM ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS;  

//FIND CUSTOMER ID HIGHT/LOW

SELECT 
    MIN(customer_id) AS min_customer_id,
    MAX(customer_id) AS max_customer_id
FROM ECOMMERCE_DB.ANALYTICS.CLEAN_CUSTOMERS;
