-- PRIMARY KEY
-- 각 레코드(row)를 유일하게 구분할 수 있는 컬럽
-- 각 테이블에 최대 한개

CREATE TABLE MyTable11
(
id int PRIMARY KEY,
name VARCHAR(255)
);
DESC MyTable11;

INSERT INTO MyTable11
(id,name)
VALUES
(1, 'donald');

SELECT * FROM MyTable11;

INSERT INTO MyTable11
(name)
VALUES
('mickey');

CREATE TABLE Korean11
(
id int auto_increment PRIMARY KEY,
name VARCHAR(255)
)
charset = utf8;

INSERT INTO Korean11
(name)
VALUES
('mickey');

SELECT * FROM Korean11;

INSERT INTO Korean11
(id, name)
VALUES
(3, 'mickey');

INSERT INTO Korean11
(name)
VALUES
('a');

INSERT INTO Korean11
(name)
VALUES
('b');

INSERT INTO Korean11
(id, name)
VALUES
(2, 'mickey');






