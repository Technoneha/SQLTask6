--  Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

--  Create orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    amount NUMERIC(10,2) NOT NULL
);

-- Insert sample data into customers
INSERT INTO customers (name) VALUES
('Neha Mishra'),
('Amit Sharma'),
('Priya Verma'),
('Rahul Singh');

-- 4. Insert sample data into orders
INSERT INTO orders (customer_id, amount) VALUES
(1, 450),   -- Neha
(1, 700),   -- Neha
(2, 300),   -- Amit
(3, 800),   -- Priya
(4, 200),   -- Rahul
(3, 1500);  -- Priya


-- 5. SUBQUERY inside IN

SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE amount > 500
);


-- 6. SUBQUERY inside EXISTS

SELECT name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
    AND o.amount > 500
);


-- 7. SUBQUERY with '=' (Scalar subquery)

SELECT name
FROM customers
WHERE customer_id = (
    SELECT customer_id
    FROM orders
    ORDER BY amount DESC
    LIMIT 1
);


