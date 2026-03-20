CREATE TABLE dim_date(
    date_id INT PRIMARY KEY,
    date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store(
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales(
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY(date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY(store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY(product_id) REFERENCES dim_product(product_id)
);

-- Sample Inserts
INSERT INTO dim_date VALUES
(1,'2023-01-01',1,2023),
(2,'2023-02-01',2,2023),
(3,'2023-03-01',3,2023);

INSERT INTO dim_store VALUES
(1,'Store A','Mumbai'),
(2,'Store B','Delhi'),
(3,'Store C','Bangalore');

INSERT INTO dim_product VALUES
(101,'Laptop','Electronics'),
(102,'Shirt','Clothing'),
(103,'Milk','Groceries');

INSERT INTO fact_sales VALUES
(1,1,1,101,2,100000),
(2,1,2,102,5,6000),
(3,2,1,103,10,600),
(4,2,3,101,1,50000),
(5,3,2,102,3,3600),
(6,3,3,103,8,480);
