-- UNIQUE
CREATE TABLE MyTable9
(
id int unique,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES (2, 'hello');

INSERT INTO MyTable9
(id, name)
VALUES (3, 'hello');

INSERT INTO MyTable9
(name)
VALUES
('donald');

SELECT * FROM MyTable9;

-- NULL 은 값이 없다 라는 뜻이다 그래서 중복도 가능
SELECT * FROM MyTable9
WHERE id IS NULL;

SELECT * FROM MyTable9
WHERE id IS NOT NULL;

-- IFNULL
SELECT ifnull(id, 0), -- null이라면 0으로 바꿔서 라는 의미
name FROM MyTable9;




--
CREATE TABLE MyTable10
(
id INT UNIQUE NOT NULL,
name VARCHAR(255) NOT NULL
);

DESC MyTable10;













