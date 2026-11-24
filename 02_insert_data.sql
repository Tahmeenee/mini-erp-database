
-- =============================================
-- TECHSTORE MINI ERP DATABASE
-- SAMPLE BUSINESS DATA
-- =============================================

PRAGMA foreign_keys = ON;

-- CUSTOMERS
INSERT INTO customers (first_name, last_name, email, city, registration_date) VALUES
('Alice', 'Johnson', 'alice.johnson@email.com', 'Turin', '2025-01-15'),
('Marco', 'Rossi', 'marco.rossi@email.com', 'Milan', '2025-01-20'),
('Sofia', 'Bianchi', 'sofia.bianchi@email.com', 'Rome', '2025-02-02'),
('Luca', 'Ferrari', 'luca.ferrari@email.com', 'Turin', '2025-02-10'),
('Emma', 'Wilson', 'emma.wilson@email.com', 'London', '2025-02-18'),
('Daniel', 'Brown', 'daniel.brown@email.com', 'Milan', '2025-03-01'),
('Giulia', 'Conti', 'giulia.conti@email.com', 'Florence', '2025-03-05'),
('Noah', 'Martin', 'noah.martin@email.com', 'Paris', '2025-03-15'),
('Sara', 'Romano', 'sara.romano@email.com', 'Turin', '2025-03-20'),
('James', 'Taylor', 'james.taylor@email.com', 'London', '2025-04-01'),
('Elena', 'Greco', 'elena.greco@email.com', 'Rome', '2025-04-08'),
('Matteo', 'Gallo', 'matteo.gallo@email.com', 'Milan', '2025-04-15');

-- PRODUCTS
INSERT INTO products (product_name, category, unit_price, supplier, active) VALUES
('Laptop Pro 15', 'Laptops', 1499.99, 'TechSupplier A', 1),
('Laptop Air 13', 'Laptops', 999.99, 'TechSupplier A', 1),
('Gaming Laptop X', 'Laptops', 1899.99, 'TechSupplier B', 1),
('Monitor 27 inch', 'Monitors', 329.99, 'TechSupplier C', 1),
('Monitor UltraWide', 'Monitors', 599.99, 'TechSupplier C', 1),
('Mechanical Keyboard', 'Accessories', 129.99, 'TechSupplier D', 1),
('Wireless Mouse', 'Accessories', 49.99, 'TechSupplier D', 1),
('Noise Cancelling Headphones', 'Audio', 249.99, 'TechSupplier E', 1),
('USB-C Docking Station', 'Accessories', 179.99, 'TechSupplier D', 1),
('Webcam HD', 'Accessories', 89.99, 'TechSupplier F', 1),
('Tablet Pro', 'Tablets', 799.99, 'TechSupplier B', 1),
('Smartphone X', 'Smartphones', 1099.99, 'TechSupplier G', 1),
('External SSD 1TB', 'Storage', 119.99, 'TechSupplier F', 1),
('Gaming Headset', 'Audio', 159.99, 'TechSupplier E', 1),
('Printer Laser', 'Printers', 279.99, 'TechSupplier H', 1);

-- ORDERS
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2025-04-01', 'Delivered'),
(2, '2025-04-02', 'Delivered'),
(3, '2025-04-03', 'Shipped'),
(1, '2025-04-05', 'Delivered'),
(4, '2025-04-06', 'Processing'),
(5, '2025-04-08', 'Delivered'),
(6, '2025-04-10', 'Delivered'),
(7, '2025-04-12', 'Cancelled'),
(8, '2025-04-14', 'Shipped'),
(9, '2025-04-15', 'Delivered'),
(10, '2025-04-17', 'Processing'),
(2, '2025-04-18', 'Delivered'),
(11, '2025-04-20', 'Delivered'),
(12, '2025-04-22', 'Pending'),
(3, '2025-04-24', 'Delivered'),
(1, '2025-04-25', 'Delivered'),
(5, '2025-04-27', 'Shipped'),
(7, '2025-04-28', 'Delivered'),
(8, '2025-04-29', 'Processing'),
(10, '2025-04-30', 'Delivered');

-- ORDER ITEMS
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1499.99),
(1, 6, 1, 129.99),
(2, 7, 2, 49.99),
(2, 10, 1, 89.99),
(3, 3, 1, 1899.99),
(3, 14, 1, 159.99),
(4,4, 2, 329.99),
(4,9, 1, 179.99),
(5,2, 1, 999.99),
(5,7, 1, 49.99),
(6,8, 1, 249.99),
(6,6, 1, 129.99),
(7,12, 1, 1099.99),
(7,13, 2, 119.99),
(8,5, 1, 599.99),
(9,11, 1, 799.99),
(9,10, 1, 89.99),
(10,1, 1, 1499.99),
(10,7, 1, 49.99),
(11,3, 1, 1899.99),
(11,14, 2, 159.99),
(12,4, 1, 329.99),
(12,6, 1, 129.99),
(13,15, 1, 279.99),
(13,13, 1, 119.99),
(14,12, 1, 1099.99),
(15,2, 1, 999.99),
(15,9, 1, 179.99),
(16,1, 1, 1499.99),
(16,8, 1, 249.99),
(17,5, 1, 599.99),
(17,7, 2, 49.99),
(18,11, 1, 799.99),
(18,10, 1, 89.99),
(19,14, 1, 159.99),
(19,6, 1, 129.99),
(20,3, 1, 1899.99),
(20,13, 2, 119.99);

-- INVENTORY
INSERT INTO inventory (product_id, quantity_in_stock, reorder_level, last_updated) VALUES
(1, 5, 3, '2025-04-30'),
(2, 12, 5, '2025-04-30'),
(3, 2, 3, '2025-04-30'),
(4, 8, 4, '2025-04-30'),
(5, 1, 3, '2025-04-30'),
(6, 25, 10, '2025-04-30'),
(7, 40, 15, '2025-04-30'),
(8, 6, 3, '2025-04-30'),
(9, 9, 4, '2025-04-30'),
(10, 3, 5, '2025-04-30'),
(11, 4, 2, '2025-04-30'),
(12, 7, 3, '2025-04-30'),
(13,20, 8, '2025-04-30'),
(14,2, 5, '2025-04-30'),
(15,6, 2, '2025-04-30');
