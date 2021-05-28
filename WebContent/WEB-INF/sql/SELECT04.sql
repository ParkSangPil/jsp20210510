SELECT * FROM Customers
WHERE CustomerID = 1;

SELECT CustomerName FROM Customers
WHERE CustomerID = 1;

SELECT CustomerName,City,CustomerID FROM Customers
WHERE CustomerID IN (1,2,3);

SELECT CustomerID,CustomerName, City
FROM Customers
WHERE CustomerID = 2;

SELECT CustomerID
FROM Customers;

SELECT * FROM Employees
WHERE EmployeeID = 1;

SELECT DISTINCT * FROM Customers;

SELECT CustomerName,City FROM Customers
WHERE CustomerID = 2;

SELECT * FROM Employees WHERE EmployeeID = 2;








