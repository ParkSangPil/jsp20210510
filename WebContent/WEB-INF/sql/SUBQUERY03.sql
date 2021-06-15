use test;

SELECT *
  FROM OrderDetails
  WHERE Quantity = 10
  ORDER BY ProductID;
  
  SELECT *
FROM Products
WHERE ProductID = 10;

SELECT ProductName, ProductID
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 10);
  
  SELECT ProductName, ProductID
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);



















