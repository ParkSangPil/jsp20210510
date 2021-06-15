CREATE TABLE MyTable7
(
id int,
name VARCHAR(255)
);

INSERT INTO MyTable7
(id, name)
VALUES (3, 'hello');

SELECT * FROM MyTable7;

INSERT INTO MyTable7
(id)
VALUES (4);

INSERT INTO MyTable7
(name)
VALUES ('donald');

-- NOT NULL
CREATE TABLE MyTable8
(
id int NOT NULL,
name VARCHAR(255) NOT NULL
);

INSERT INTO MyTable8
(id, name)
VALUES (3, 'hello');

SELECT * FROM MyTable8;

INSERT INTO MyTable8
(id) VALUES (3); -- x

INSERT INTO MyTable8
(name) VALUES ('hello'); -- x

DESC MyTable8;










