# ASSIGNMENT 2 - 23.10.23

# Task 1
SELECT CustomerID, City, Address
FROM customers
ORDER BY CustomerID DESC; 

# Task 2 
SELECT *
FROM products
WHERE UnitPrice <= 10
ORDER BY UnitPrice ASC;

# Task 3 
SELECT *
FROM products
WHERE UnitPrice < 40
ORDER BY UnitPrice DESC
LIMIT 5;

# Task 4 
SELECT *
FROM products
WHERE UnitPrice < 10
AND NOT QuantityPerUnit = "12 - 12 oz cans"
ORDER BY ProductName DESC;

# Task 5
SELECT ProductName, SupplierID, UnitPrice
FROM products
ORDER BY SupplierID DESC, UnitPrice ASC;

# Task 6 
SELECT MIN(Quantity) as MinimumOrderedQuantity, MAX(Quantity) as MaximumOrderedQuantity
FROM orderdetails;


# ------- Preparation for task 7 to 14 -------
CREATE TABLE departments (
	DepartmentID int NOT NULL,
	ManagerID int NOT NULL,
	DepartmentName varchar(25),
	PRIMARY KEY (DepartmentID)
);

SET SQL_SAFE_UPDATES = 0;
# --------------------------------------------

# Task 7 
INSERT INTO departments (DepartmentID, ManagerID, DepartmentName) 
VALUES ('10', '11', 'Administration');

INSERT INTO departments (DepartmentID, ManagerID, DepartmentName) 
VALUES ('20', '12', 'Shipping');

INSERT INTO departments (DepartmentID, ManagerID, DepartmentName) 
VALUES ('30', '13', 'Purchasing');

INSERT INTO departments (DepartmentID, ManagerID, DepartmentName) 
VALUES ('40', '14', 'Sales');

# Task 8 
INSERT INTO departments
VALUES (50, 15, 'IT support');

INSERT INTO departments
VALUES (60, 20, 'Legal and Compliance');

INSERT INTO departments
VALUES (70, 14, 'Marketing');

INSERT INTO departments
VALUES (80, 14, 'Finance');

# Task 9 
UPDATE departments
SET ManagerID = 40
WHERE DepartmentName = 'Marketing';

# Task 10 
UPDATE departments
SET DepartmentName = NULL
WHERE ManagerID = 14;

# Task 11 
SELECT DepartmentName
FROM departments
WHERE DepartmentName != "";

# Task 12 
SELECT *
FROM departments
WHERE DepartmentName IS NULL;

# Task 13 
DELETE FROM departments
WHERE ManagerID = 14;

# Task 14 
DELETE FROM departments;

