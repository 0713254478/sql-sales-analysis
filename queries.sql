-- Query 1: Detailed orders by customer
SELECT c.name AS customer_name, o.order_date, p.name AS product_name, od.quantity, od.price
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id;

-- Query 2: Total spent per customer
SELECT c.name, SUM(od.price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY c.name;

-- Query 3: Top selling products by quantity
SELECT p.name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- Query 4: Monthly sales totals
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month, SUM(od.price * od.quantity) AS total_sales
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY month
ORDER BY month;
