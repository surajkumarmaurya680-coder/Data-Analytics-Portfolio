-- CREATE TABLE customers ---------
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    gender VARCHAR(10)
);

SELECT * FROM customers;

--- INSERT DATA ----
INSERT INTO customers VALUES
(1, 'Amit', 'Lucknow', 'Male'),
(2, 'Neha', 'Delhi', 'Female'),
(3, 'Rahul', 'Kanpur', 'Male'),
(4, 'Priya', 'Lucknow', 'Female'),
(5, 'Rohit', 'Delhi', 'Male');

SELECT * FROM customers;



-- CREATE TABLE products ------
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price NUMERIC(10,2)
);

SELECT * FROM products;

--- INSERT DATA ----
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Mobile', 'Electronics', 20000),
(103, 'Chair', 'Furniture', 3000),
(104, 'Table', 'Furniture', 7000),
(105, 'Headphones', 'Accessories', 2000);

SELECT * FROM products;



--- CREATE TABLE orders ---------
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

SELECT * FROM orders;

--- INSERT DATA ----
INSERT INTO orders VALUES
(1001, 1, 101, 1, '2026-01-05'),
(1002, 2, 102, 2, '2026-01-06'),
(1003, 3, 103, 3, '2026-01-08'),
(1004, 1, 104, 1, '2026-02-10'),
(1005, 4, 105, 2, '2026-02-12'),
(1006, 5, 101, 1, '2026-02-15'),
(1007, 2, 103, 2, '2026-03-01'),
(1008, 3, 102, 1, '2026-03-05'),
(1009, 4, 104, 2, '2026-03-10'),
(1010, 5, 105, 3, '2026-03-15');


