# Assignment 1 - 09.10.2023

# Task 1 - All data from 'categories'
SELECT * 
FROM categories;

# Task 2 - Product name, quantity per unit, price per unit for all products
SELECT ProductName, QuantityPerUnit, UnitPrice 
FROM products;

# Task 3 - Distinct 'ContactTitle' from 'customers'
SELECT DISTINCT ContactTitle 
FROM customers;

# Task 4 - Distinct 'Title' from 'employees'
SELECT DISTINCT Title 
FROM employees;

# Task 5 - All orders from '1996-05-17'
SELECT OrderDate 
FROM orders 
WHERE OrderDate = '1996-05-17';

# Task 6 - All orders starting from '1996-05-17'
SELECT OrderDate 
FROM orders 
WHERE OrderDate >= '1996-05-17';

# Task 7 - All unit prices greater than 40
SELECT UnitPrice 
FROM products 
WHERE UnitPrice >= 40;

# Task 8 - All unit prices within the range of 30 to 40 from 'products'
SELECT UnitPrice 
FROM products 
WHERE UnitPrice BETWEEN 30 AND 40;


# Task 9 - All 'orderID' and corresponding 'ContactName' using 'orders' and 'customers'
SELECT OrderID, (
    SELECT ContactName 
    FROM customers 
    WHERE CustomerID = orders.CustomerID
) AS ContactName
FROM orders;


# Task 10 - All customers who made orders on '1995-05-01'
SELECT ContactName, City, Address, (
    SELECT OrderDate
    FROM orders 
    WHERE CustomerID = customers.CustomerID
    AND orderDate= '1995-05-01'
) AS OrderDate
FROM customers;


# Task 11 - Details of all customers form 'London' or 'Buenos Aires'
SELECT *
FROM customers
WHERE City = 'London'
OR City = 'Buenos Aires';

# Task 12 - Details of all customers from 'USA' but not 'Portland'
SELECT *
FROM customers
WHERE Country = 'USA'
AND City != 'Portland';

# Task 13 - All order details with product name 'Tofu'
SELECT *
FROM orderdetails
WHERE ProductID = (
	SELECT ProductID
    FROM products
    WHERE ProductName='Tofu'
);

# Task 14 - Employee assigned to OrderID '10369' using SELECT, FROM, WHERE and AND
SELECT employees.FirstName, employees.LastName
FROM employees, orders
WHERE employees.EmployeeID = orders.EmployeeID
AND orders.OrderID = 10369;

# Task 15 - Employee assigned to OrderID '10369' using SELECT, FROM and WHERE
SELECT employees.FirstName, employees.LastName
FROM employees
WHERE EmployeeID = (
	SELECT EmployeeID
    FROM orders
    WHERE OrderID=10369
);
