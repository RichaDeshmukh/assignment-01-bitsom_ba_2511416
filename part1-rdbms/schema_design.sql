-- CUSTOMERS TABLE
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- PRODUCTS TABLE
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL
);

-- SALES REPRESENTATIVES TABLE
CREATE TABLE sales_reps (
    rep_id VARCHAR(10) PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

-- ORDER ITEMS TABLE
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- INSERT SAMPLE DATA

-- Customers
INSERT INTO customers VALUES
('C001', 'Ravi Kumar', 'Mumbai'),
('C002', 'Sneha Sharma', 'Delhi'),
('C003', 'Amit Patel', 'Ahmedabad'),
('C004', 'Priya Singh', 'Mumbai'),
('C005', 'Rahul Verma', 'Bangalore');

-- Products
INSERT INTO products VALUES
('P001', 'Laptop', 'Electronics', 50000),
('P002', 'Mobile', 'Electronics', 20000),
('P003', 'Shirt', 'Clothing', 1500),
('P004', 'Rice', 'Groceries', 800),
('P005', 'Headphones', 'Electronics', 3000);

-- Sales Reps
INSERT INTO sales_reps VALUES
('R001', 'John'),
('R002', 'Meena'),
('R003', 'Arjun'),
('R004', 'Sara'),
('R005', 'David');

-- Orders
INSERT INTO orders VALUES
('O001', 'C001', 'R001', '2024-01-10'),
('O002', 'C002', 'R002', '2024-01-12'),
('O003', 'C003', 'R003', '2024-01-15'),
('O004', 'C004', 'R001', '2024-01-18'),
('O005', 'C005', 'R004', '2024-01-20');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
('O001', 'P001', 1),
('O002', 'P002', 2),
('O003', 'P003', 3),
('O004', 'P004', 5),
('O005', 'P005', 2);
