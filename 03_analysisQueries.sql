ALTER TABLE naijamart_sales_people
ADD CONSTRAINT pk_salespeople
PRIMARY KEY(salesperson_id);

SELECT * FROM naijamart_sales_people
LIMIT 10;

SELECT DISTINCT t.customer_id
FROM naijamart_transactions t
LEFT JOIN naijamart_customers c
    ON t.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT DISTINCT t.product_id
FROM naijamart_transactions t
LEFT JOIN naijamart_products p
    ON t.product_id = p.product_id
WHERE p.product_id IS NULL;

SELECT DISTINCT t.salesperson_id
FROM naijamart_transactions t
LEFT JOIN naijamart_sales_people s
    ON t.salesperson_id = s.salesperson_id
WHERE s.salesperson_id IS NULL;



SELECT 
t.transaction_id,
t.sales_amount,
t.payment_method,
c.customer_name,
c.customer_id,
c.state,
c.region
FROM naijamart_transactions t
JOIN naijamart_customers c
ON t.customer_id = c.customer_id;

describe naijamart_transactions;

ALTER TABLE naijamart_transactions
ADD CONSTRAINT fk_saleperson_id
FOREIGN KEY (salesperson_id) REFERENCES naijamart_sales_people(salesperson_id);

SELECT transaction_id, sales_amount, profit, customer_name
FROM naijamart_transactions INNER JOIN naijamart_customers
ON naijamart_transactions.customer_id = naijamart_customers.customer_id
LIMIT 20;

SELECT
    t.transaction_id,
    c.customer_name,
    p.product_name,
    s.salesperson_name
FROM naijamart_transactions t
INNER JOIN naijamart_customers c
    ON t.customer_id = c.customer_id
INNER JOIN naijamart_products p
    ON t.product_id = p.product_id
INNER JOIN naijamart_sales_people s
    ON t.salesperson_id = s.salesperson_id
LIMIT 20;

SELECT AVG(sales_amount) as average_transaction_value
FROM naijamart_transactions;

SELECT 
p.product_name,
SUM(t.profit) AS total_profit
FROM naijamart_transactions t
INNER JOIN naijamart_products p
ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC
LIMIT 10;

SELECT 
c.customer_name,
SUM(t.sales_amount) AS total_revenue
FROM naijamart_transactions t
INNER JOIN naijamart_customers c
ON t.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_revenue desc
LIMIT 10;





SELECT
s.salesperson_name,
SUM(t.sales_amount) AS total_sales
FROM naijamart_transactions t
INNER JOIN naijamart_sales_people s
ON t.salesperson_id = s.salesperson_id
GROUP BY salesperson_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT 
SUM(profit) / SUM(sales_amount) * 100 AS profit_margin
FROM naijamart_transactions;

SELECT 
p.category,
SUM(t.profit) / SUM(sales_amount) * 100 AS profit_margin
FROM naijamart_transactions T
INNER JOIN naijamart_products p
ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY profit_margin DESC;

SELECT
SUM(quantity) as total_units_sold
FROM naijamart_transactions;

SELECT
p.product_name,
SUM(t.quantity) as units_sold
FROM naijamart_transactions t
INNER JOIN naijamart_products p
ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC
LIMIT 10;
	
    
SELECT
AVG(discount) FROM naijamart_transactions;

SELECT
    discount,
    COUNT(*) AS transactions,
    AVG(sales_amount) AS average_transaction_value
FROM naijamart_transactions
GROUP BY discount
ORDER BY discount;

SELECT
    discount,
    COUNT(*) AS transactions,
    SUM(sales_amount) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(profit) AS average_profit
FROM naijamart_transactions
GROUP BY discount
ORDER BY discount;

SELECT
    discount,
    COUNT(*) AS transactions,
    SUM(sales_amount) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales_amount) * 100 AS profit_margin
FROM naijamart_transactions
GROUP BY discount
ORDER BY discount;

SHOW VARIABLES LIKE 'port';






