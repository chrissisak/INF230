# Assignment 3 - 06.11.23

# Task 1 
SELECT COUNT(*)
FROM orders;

# Task 2
SELECT *
FROM products
WHERE ProductName LIKE "%ra" 
ORDER BY ProductName DESC;

# Task 3
SELECT ProductID, ProductName, QuantityPerUnit
FROM products
WHERE QuantityPerUnit LIKE "%500 g%" 
ORDER BY ProductID DESC;

# Task 4
SELECT ContactName
FROM customers
WHERE ContactName >= 'M' AND ContactName < 'T'
AND Country != "Mexico"
ORDER BY ContactName ASC;

# Task 5
SELECT COUNT(*)
FROM customers
WHERE Fax IS NULL;

# Task 6
SELECT AVG(UnitPrice)
FROM products
WHERE SupplierID = (
    SELECT SupplierID
    FROM suppliers
    WHERE CompanyName = 'Karkki Oy'
);

# Task 7
SELECT SUM(Freight) AS "Total Freight"
FROM orders
WHERE CustomerID LIKE "B%S";

# Task 8
SELECT COUNT(*) as "Number of orders", AVG(Quantity) AS "Average Quantity"
FROM orderdetails;

# Task 9
SELECT COUNT(DISTINCT ProductID) AS "Number of product types"
FROM orderdetails
WHERE ProductID LIKE '4%' OR ProductID LIKE '%3';

# Task 10
SELECT SUM(UnitsInStock) AS "Total stock"
FROM products
WHERE ProductID LIKE '4%' OR ProductID LIKE '%3';

# Task 11
SELECT DISTINCT CustomerID
FROM orders
WHERE ShipVia = 3 
AND ShipName LIKE "R%"
AND CustomerID LIKE "%C";

# Task 12
SELECT FirstName, LastName
FROM employees
WHERE YEAR(HireDate) < 1994
AND Title LIKE "%Representative%"
AND PostalCode LIKE "%3";

# Task 13
SELECT EmployeeID, CustomerID
FROM orders
WHERE CustomerID LIKE "BO_t%"
OR CustomerID LIKE "BO_i%"
AND Freight > 50;

# Task 14
SELECT employees.EmployeeID, employees.LastName, orders.CustomerID
FROM employees, orders
WHERE employees.EmployeeID = orders.EmployeeID
AND orders.CustomerID LIKE 'BO_%t%'
AND employees.LastName LIKE '%LL%';
