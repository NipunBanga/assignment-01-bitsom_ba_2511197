-- Q1
SELECT c.customer_name,COUNT(o.order_id)
FROM 'datasets/customers.csv' c
LEFT JOIN 'datasets/orders.json' o
ON c.customer_id=o.customer_id
GROUP BY c.customer_name;

-- Q2
SELECT c.customer_name,SUM(o.total_amount)
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o
ON c.customer_id=o.customer_id
GROUP BY c.customer_name
ORDER BY SUM(o.total_amount) DESC
LIMIT 3;

-- Q3
SELECT p.product_name
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o ON c.customer_id=o.customer_id
JOIN 'datasets/products.parquet' p ON o.product_id=p.product_id
WHERE c.city='Bangalore';

-- Q4
SELECT c.customer_name,o.order_date,p.product_name,o.quantity
FROM 'datasets/customers.csv' c
JOIN 'datasets/orders.json' o ON c.customer_id=o.customer_id
JOIN 'datasets/products.parquet' p ON o.product_id=p.product_id;