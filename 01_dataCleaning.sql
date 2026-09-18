SELECT sales_amount
FROM naijamart_transactions LIMIT 1000;

RENAME TABLE `naija mart work` TO naijamart_transactions;
USE naijamartschema;

RENAME TABLE `naija mart work(customers)` TO naijamart_customers;

SELECT COUNT(*)
FROM naijamart_transactions;

DESCRIBE naijamart_transactions;
ALTER TABLE naijamart_customers
RENAME COLUMN ï»¿customer_id TO customer_id;

DROP TABLE naijamart_customers;

SELECT transaction_id, COUNT(*) AS occurrences
FROM naijamart_transactions
GROUP BY transaction_id
HAVING COUNT(*) > 1;

SELECT * FROM naijamart_transactions
WHERE transaction_id = 'T15838';


DELETE  FROM naijamart_transactions
WHERE transaction_id = 'T15838'
LIMIT 1;

SELECT salesperson_id, COUNT(*) AS occurrences
FROM naijamart_sales_people
GROUP BY salesperson_id
HAVING COUNT(*) > 1;

SELECT * FROM naijamart_customers
WHERE customer_id = 'C2777';

DELETE FROM naijamart_customers
WHERE customer_id = 'C2777'
LIMIT 1;


SELECT COUNT(*)
FROM naijamart_sales_people
WHERE salesperson_id IS NULL;


SELECT * FROM naijamart_transactions
LIMIT 10;



