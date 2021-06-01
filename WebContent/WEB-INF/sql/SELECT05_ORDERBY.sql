SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * FROM Customers
ORDER BY Country,City;  -- 먼저 Country 로 정렬이 되고 그 다음 City순으로 정렬 

SELECT * FROM Customers
ORDER BY Country DESC, City ASC;