use test;

SELECT * FROM Customers
WHERE EXISTS (SELECT now()); -- 조건이 약간 true같은거임 ㅋㅋ

SELECT * FROM Customers
WHERE NOT EXISTS (SELECT now());

-- w3 예재
SELECT SupplierID, SupplierName
FROM Suppliers
WHERE EXISTS  -- 출력이 된다
(SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20); -- 하나라도 조건 만족하면

-- subquery
SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = 3 AND Price < 20;

DESC Suppliers;
SELECT * FROM Suppliers;














