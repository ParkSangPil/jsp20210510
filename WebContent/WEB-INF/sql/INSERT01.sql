SELECT * FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(92, 'SangP', 'Lee', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers
VALUES
(94, 'Choi', 'Hong', 'Gangnam', 'Seoul', '00000', 'Korea');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName)
VALUES
(95, 'Back', 'Seoul');

INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
Values
('Trump', 'Donald', 'NY', 'NY', '000', 'US');

-- 테이블 설명 보기
DESC Customers; 
DESC Employees;

SELECT * FROM Employees
ORDER BY EmployeeID DESC;

SELECT schema_name , default_character_set_name
FROM information_schema.schemata;

CREATE TABLE Korean1
(EmployeeID int(11),LastName varchar(255),FirstName varchar(255),BirthDate date,Photo varchar(255),Notes text)
charset = utf8;

DROP TABLE Korean1;

CREATE TABLE Korean1
(
EmployeeID int(11),LastName varchar(255),FirstName varchar(255),
BirthDate date,Photo varchar(255),Notes text, 
PRIMARY KEY (EmployeeID)
)
charset = utf8;

DESC Korean1;

INSERT INTO Korean1
VALUES
(1, 'aa', 'aa', '1995-05-28', 'aa', 'aaaaaaaaaaaaaaaaaa');

SELECT * FROM Korean1;








