-- Q1
SELECT c.customer_name, COUNT(o.order_id)
FROM read_csv_auto('datasets/customers.csv') c
LEFT JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- Q2
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 3;

-- Q3
SELECT p.product_name
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o 
ON c.customer_id = o.customer_id
JOIN read_parquet('datasets/products.parquet') p 
ON o.product_id = p.product_id
WHERE c.city = 'Bangalore';

-- Q4
SELECT c.customer_name, o.order_date, p.product_name, o.quantity
FROM read_csv_auto('datasets/customers.csv') c
JOIN read_json_auto('datasets/orders.json') o 
ON c.customer_id = o.customer_id
JOIN read_parquet('datasets/products.parquet') p 
ON o.product_id = p.product_id;