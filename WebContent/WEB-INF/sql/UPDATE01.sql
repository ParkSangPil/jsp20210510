SELECT * FROM Customers
ORDER BY CustomerID;

DESC Customers;

UPDATE Customers
SET CustomerName = '스파이더맨';

UPDATE Customers
Set CustomerName = '아이언맨'
WHERE CustomerID = 1;

UPDATE Customers
Set CustomerName = 'thor',
ContactName = 'odinson',
Address = 'Asgard'
WHERE CustomerID = 1;

SELECT * FROM Employees
ORDER BY EmployeeID;







