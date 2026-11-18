-- Total (15) ASSIGNMENT -----------

-- Task(1): Display all customers
SELECT * FROM customers; 	


-- Task(2): Display all Products
select* from products;


-- Task(3): Find total number of orders
select count(*)  from orders;


-- Task(4): Find Total Revenue
	SELECT
	    SUM(p.price * o.quantity) AS total_revenue
	FROM products p
	JOIN orders o
	    ON p.product_id = o.product_id;
		

-- Task(5): Find highest-priced product
   select * from products order by price desc limit 1;


-- Task(6): Find lowest-priced product
	select * from products order by price asc limit 1;


-- Task(7): Calculate product-wise revenue
	    SELECT
	    p.product_name,
	    SUM(p.price * o.quantity) AS total_revenue
	FROM products p
	JOIN orders o
	    ON p.product_id = o.product_id
	GROUP BY p.product_name
	ORDER BY total_revenue DESC;


-- Task(8): Calculate category-wise revenue
		SELECT
	    p.category,
	    SUM(p.price * o.quantity) AS total_revenue
	FROM products p
	JOIN orders o
	    ON p.product_id = o.product_id
	GROUP BY p.category
	ORDER BY total_revenue DESC;



-- Task(9): Find City-wise Customers
	SELECT
	    city,
	    COUNT(*) AS total_customers
	FROM customers
	GROUP BY city
	ORDER BY total_customers DESC;


-- Task(10): Find Customer-wise Total Orders
	SELECT
	    c.customer_name,
	    COUNT(o.order_id) AS total_orders
	FROM customers c
	JOIN orders o
	    ON c.customer_id = o.customer_id
	GROUP BY c.customer_id, c.customer_name
	ORDER BY total_orders DESC;



-- Task(11): Display Customer Names with Their Orders
	SELECT
	    c.customer_name,
	    o.order_id,
	    o.order_date,
	    o.quantity
	FROM customers c
	JOIN orders o
	    ON c.customer_id = o.customer_id
	ORDER BY c.customer_name;
		


-- Task(12): Find Top-selling Product
	SELECT
	    p.product_name,
	    SUM(o.quantity) AS total_quantity
	FROM products p
	JOIN orders o
	    ON p.product_id = o.product_id
	GROUP BY p.product_id, p.product_name
	ORDER BY total_quantity DESC
	LIMIT 1;



-- Task(13): Find Monthly Sales
	SELECT
	    EXTRACT(MONTH FROM o.order_date) AS sales_month,
	    TO_CHAR(o.order_date, 'Month') AS month_name,
	    SUM(p.price * o.quantity) AS total_sales
	FROM orders o
	JOIN products p
	    ON o.product_id = p.product_id
	GROUP BY
	    EXTRACT(MONTH FROM o.order_date),
	    TO_CHAR(o.order_date, 'Month')
	ORDER BY sales_month;



-- Task(14): Find Customers Who Placed More Than One Order
	SELECT
	    c.customer_name,
	    COUNT(o.order_id) AS total_orders
	FROM customers c
	JOIN orders o
	    ON c.customer_id = o.customer_id
	GROUP BY c.customer_id, c.customer_name
	HAVING COUNT(o.order_id) > 1;
	


-- Task(15): Prepare Final Sales Report
	SELECT
	    (SELECT COUNT(*) FROM customers) AS total_customers,
	
	    (SELECT COUNT(*) FROM products) AS total_products,
	
	    (SELECT COUNT(*) FROM orders) AS total_orders,
	
	    (
	        SELECT SUM(p.price * o.quantity)
	        FROM orders o
	        JOIN products p
	            ON o.product_id = p.product_id
	    ) AS total_revenue,
	
	    (
	        SELECT AVG(p.price * o.quantity)
	        FROM orders o
	        JOIN products p
	            ON o.product_id = p.product_id
	    ) AS average_order_value;






	