SELECT City FROM Customers;

SELECT distinct City FROM Customers;

-- COUNT

SELECT COUNT(*) FROM Customers;

SELECT COUNT(City) FROM Customers;

SELECT COUNT(distinct City) FROM Customers;



SELECT DISTINCT Country FROM Customers;

SELECT DISTINCT City,Country FROM Customers;
-- SELECT DISTINCT (City,Country) FROM Customers; 얘는 앙대영