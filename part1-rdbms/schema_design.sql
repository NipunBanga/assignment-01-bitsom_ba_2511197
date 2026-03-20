-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO customers VALUES
(1, 'Amit Sharma', 'Mumbai'),
(2, 'Riya Verma', 'Delhi'),
(3, 'Rahul Singh', 'Mumbai'),
(4, 'Neha Gupta', 'Bangalore'),
(5, 'Karan Mehta', 'Mumbai');

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

INSERT INTO products VALUES
(101, 'Laptop', 50000),
(102, 'Mobile', 20000),
(103, 'Headphones', 3000),
(104, 'Keyboard', 1500),
(105, 'Mouse', 800);

-- Sales Representatives
CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

INSERT INTO sales_reps VALUES
(1, 'Raj'),
(2, 'Simran'),
(3, 'Aman'),
(4, 'Priya'),
(5, 'Kunal');

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    rep_id INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

INSERT INTO orders VALUES
(1001, 1, 1, '2023-01-01'),
(1002, 2, 2, '2023-01-05'),
(1003, 3, 3, '2023-01-10'),
(1004, 4, 4, '2023-01-15'),
(1005, 5, 5, '2023-01-20');

-- Order Items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1002, 102, 2),
(3, 1003, 103, 3),
(4, 1004, 104, 2),
(5, 1005, 105, 4);
