INSERT INTO Customers (name, contact) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com'),
('Mike Johnson', 'mike@example.com');

INSERT INTO Products (name, category, price) VALUES
('Laptop', 'Electronics', 899.99),
('Headphones', 'Electronics', 199.99),
('Office Chair', 'Furniture', 149.99);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-08-01', 1099.98),
(2, '2025-08-02', 149.99);

INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 899.99),
(1, 2, 1, 199.99),
(2, 3, 1, 149.99);
