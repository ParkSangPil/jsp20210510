use test;
SELECT * FROM Customers;

SELECT COUNT(*) 숫자 FROM Customers;

SELECT Country, count(*) cnt FROM Customers
GROUP BY Country ORDER BY cnt DESC;