-- =============================================
-- TECHSTORE MINI ERP DATABASE
-- Project: Mini ERP Database & Business Analysis
-- =============================================

PRAGMA foreign_keys = ON;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- =============================================
-- 1. CUSTOMERS
-- =============================================

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    city TEXT NOT NULL,
    registration_date DATE NOT NULL
);

-- =============================================
-- 2. PRODUCTS
-- =============================================

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    unit_price REAL NOT NULL CHECK (unit_price > 0),
    supplier TEXT,
    active INTEGER NOT NULL DEFAULT 1
        CHECK (active IN (0, 1))
);

-- =============================================
-- 3. ORDERS
-- =============================================

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    status TEXT NOT NULL
        CHECK (status IN ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled')),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- =============================================
-- 4. ORDER ITEMS
-- =============================================

CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    unit_price REAL NOT NULL CHECK (unit_price > 0),

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =============================================
-- 5. INVENTORY
-- =============================================

CREATE TABLE inventory (
    product_id INTEGER PRIMARY KEY,
    quantity_in_stock INTEGER NOT NULL CHECK (quantity_in_stock >= 0),
    reorder_level INTEGER NOT NULL CHECK (reorder_level >= 0),
    last_updated DATE NOT NULL,

    FOREIGN KEY (product_id) REFERENCES products(product_id)
);