use test;

CREATE TABLE Table01
(
	id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId int 
);

CREATE TABLE Table02
(
	id int PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);
drop table Table02;

INSERT into Table01
(name, bookId)
VALUES
('kim', 1);

INSERT into Table01
(name, bookId)
VALUES
('lee', 2);

INSERT into Table01
(name, bookId)
VALUES
('choi', 3);

INSERT into Table01
(name, bookId)
VALUES
('park', 4);

INSERT into Table02
(bookName)
VALUES
('book1');

INSERT into Table02
(bookName)
VALUES
('book2');

INSERT into Table02
(bookName)
VALUES
('book3');

INSERT into Table02
(bookName)
VALUES
('book4');

SELECT * FROM Table01; -- 4개
SELECT * FROM Table02; -- 4개

SELECT * FROM Table01, Table02; -- 16개

-- join
SELECT * FROM
Table01 join Table02 -- (조합하고싶은거)
on Table01.bookId = Table02.id; -- 4개 (조건)

-- alias 별칭
SELECT * FROM
Table01 as t1 Join Table02 as t2
On t1.bookId = t2.id;

-- column 별칭
SELECT 
t1.id as id1,
t1.name as name1,
t1.bookId as bookId,
t2.id as id2,
t2.bookName as bname
FROM
Table01 t1 Join Table02 t2 -- as는 생략해도 된다!
On t1.bookId = t2.id;

SELECT b.id boardId,
	   b.title title,
	   b.body body,
	   m.name memberName,
	   b.inserted
FROM Board b JOIN Member m ON b.memberId = m.id
WHERE b.id = 1;

SELECT id, title, body, memberId, inserted 
FROM Board
Where id = 1;






















