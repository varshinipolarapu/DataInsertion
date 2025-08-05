-- Step 1: Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) DEFAULT 0.00,
    StockQuantity INT DEFAULT 0
);

-- Step 2: INSERT INTO - adding rows

-- Insert with all values
INSERT INTO Products (ProductName, Category, Price, StockQuantity)
VALUES ('Laptop', 'Electronics', 55000.00, 10);

-- Insert with default Price and StockQuantity
INSERT INTO Products (ProductName, Category)
VALUES ('Mouse', 'Electronics');

-- Insert with NULL explicitly for Category (optional column)
INSERT INTO Products (ProductName, Category, Price)
VALUES ('Notebook', NULL, 50.00);

-- Step 3: UPDATE with WHERE condition
-- Update the price of the 'Mouse'
UPDATE Products
SET Price = 499.00
WHERE ProductName = 'Mouse';

-- Step 4: DELETE with WHERE condition
-- Delete the product named 'Notebook'
DELETE FROM Products
WHERE ProductName = 'Notebook';
