use test;

SELECT * FROM Products;

-- min
SELECT MIN(Price) FROM Products;

-- max
SELECT MAX(Price) FROM Products;

SELECT * FROM Products
ORDER BY Price desc;

-- count 
SELECT count(*) FROM Products;

-- avg
SELECT avg(Price) FROM Products;

-- sum
SELECT sum(Price) FROM Products;

SELECT count(*)
FROM Products
WHERE Price = 18;















