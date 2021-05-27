-- WHERE : row를 조건으로 필터 --
SELECT * FROM Customers WHERE Country="Mexico";
SELECT * FROM
Customers WHERE CustomerID=1;
SELECT  * FROM Products
WHERE Price = 18;
SELECT  * FROM Products
WHERE Price > 30;
SELECT  * FROM Products
WHERE Price <= 30;
SELECT  * FROM Products
WHERE Price <> 30; -- 같지 않다 --
SELECT  * FROM Products
WHERE Price != 30; -- 같지 않다 --
SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;
SELECT * FROM Customers
WHERE City LIKE 's%'; -- s로 시작하기만 하면 전부! --

SELECT * FROM Customers
WHERE City LIKE '%g';  -- g로 끝나는 애들!

SELECT * FROM Customers
WHERE City LIKE '%z%'; -- 중간에 z가 있는 애들!

SELECT * FROM Customers
WHERE Country LIKE '%st%';

-- IN
SELECT * FROM Customers
WHERE City IN ('Paris','London');

SELECT * FROM Customers
WHERE City IN ('Paris','London','berlin');

SELECT * FROM Customers
WHERE City='Berlin';

SELECT * FROM Customers
WHERE City !='Berlin';

SELECT * FROM Customers
WHERE City='Berlin';

SELECT * FROM Customers
WHERE CustomerID = 32;

SELECT * FROM Customers
WHERE NOT City LIKE '%on';

-- AND
SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';

-- OR
SELECT * FROM Customers
WHERE City='Berlin' OR City='München';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE Country = 'Germany' OR (CustomerName LIKE '%s%' AND City LIKE '%ch%');






