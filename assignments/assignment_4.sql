# Assignment 4 - 20.11.23

# Task 1
SELECT *
FROM employees
WHERE EmployeeID IN (2, 5, 9);

# Task 2
SELECT *
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID;

# Task 3
SELECT OrderID, customers.ContactName
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID;

# Task 4
SELECT ContactName, Address, City, orders.OrderDate
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
WHERE orders.OrderDate = "1995-05-01";

# Task 5
SELECT ProductName, CompanyName, Country, Phone
FROM suppliers
JOIN products ON suppliers.SupplierID = products.SupplierID
ORDER BY Country DESC
LIMIT 25;

# Task 6
SELECT ContactName, orders.*
FROM customers
LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
ORDER BY ContactName;

# Task 7
SELECT ProductName, QuantityPerUnit, orderdetails.Quantity
FROM products
JOIN orderdetails ON products.ProductID = orderdetails.ProductID
WHERE orderdetails.Quantity > 100;

# Task 8
SELECT EmployeeID, OrderID, customers.ContactName, customers.City
FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE EmployeeID BETWEEN 3 AND 6
ORDER BY EmployeeID ASC;

# Task 9
SELECT 
	employees.EmployeeID, 
	employees.FirstName, 
    employees.LastName, 
    orders.OrderID, 
    customers.ContactName, 
    customers.City
FROM orders
JOIN employees ON orders.EmployeeID = employees.EmployeeID
JOIN customers ON orders.CustomerID = customers.CustomerID
WHERE employees.EmployeeID BETWEEN 1 AND 4
ORDER BY employees.EmployeeID DESC;

# Task 10
SELECT 
	orders.OrderID, 
    orders.OrderDate, 
    customers.ContactName, 
    customers.PostalCode, 
    employees.FirstName, 
    employees.LastName, 
    employees.Photo
FROM orders
JOIN employees ON orders.EmployeeID = employees.EmployeeID
JOIN customers ON orders.CustomerID = customers.CustomerID;

# Task 11
SELECT SUM(orderdetails.Quantity) AS "Total quantity sold"
FROM products
JOIN orderdetails ON products.ProductID = orderdetails.ProductID
JOIN categories ON products.CategoryID = categories.CategoryID
WHERE categories.CategoryName = "Produce";
