USE  naijamartschema;
SET SQL_SAFE_UPDATES = 0;
UPDATE naijamart_transactions
SET
    unit_price = REPLACE(unit_price, ',', ''),
    unit_cost = REPLACE(unit_cost, ',', ''),
    sales_amount = REPLACE(sales_amount, ',', ''),
    cost_amount = REPLACE(cost_amount, ',', ''),
    profit = REPLACE(profit, ',', ''),
    discount = REPLACE(discount, ',', '');
    
    SELECT * FROM naijamart_transactions
    LIMIT 10;
    
ALTER TABLE naijamart_transactions
MODIFY unit_price DECIMAL(12,2),
MODIFY unit_cost DECIMAL(12,2),
MODIFY sales_amount DECIMAL(12,2),
MODIFY cost_amount DECIMAL(12,2),
MODIFY profit DECIMAL(12,2),
MODIFY discount DECIMAL(12,2);

describe naijamart_transactions;

ALTER TABLE naijamart_transactions
MODIFY transaction_id VARCHAR(20),
MODIFY customer_id VARCHAR(20),
MODIFY product_id VARCHAR(20),
MODIFY salesperson_id VARCHAR(20);

ALTER TABLE naijamart_transactions
MODIFY order_date DATE;


SELECT order_date,
STR_TO_DATE(order_date, '%W, %M %e, %Y') AS converted_date
FROM naijamart_transactions
LIMIT 10;

UPDATE naijamart_transactions
SET order_date = STR_TO_DATE(order_date, '%W, %M %e, %Y');

select * from naijamart_transactions
limit 10;

DESCRIBE naijamart_transactions;


SELECT customer_id, COUNT(*) AS appearances
FROM naijamart_customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT * FROM naijamart_customers
WHERE customer_id = '';

ALTER TABLE naijamart_customers
MODIFY customer_id VARCHAR(20);

DESCRIBE naijamart_customers;

SELECT signup_date,
STR_TO_DATE(signup_date, '%W, %M %e, %Y') AS converted_date
FROM naijamart_customers
LIMIT 10;

UPDATE naijamart_customers
SET signup_date = STR_TO_DATE(signup_date, '%W, %M %e, %Y');

SELECT product_id, COUNT(*) AS occurences
FROM naijamart_products
GROUP BY product_id
HAVING COUNT(*) > 1;

DESCRIBE naijamart_sales_people;

ALTER TABLE naijamart_sales_people
MODIFY salesperson_id VARCHAR(20);



ALTER TABLE naijamart_products
MODIFY product_id VARCHAR(20),
MODIFY unit_price DECIMAL(15,2),
MODIFY unit_cost DECIMAL(15,2);  

ALTER TABLE naijamart_sales_people
MODIFY salesperson_id VARCHAR(20) NOT NULL; 
DESCRIBE naijamart_sales_people;




