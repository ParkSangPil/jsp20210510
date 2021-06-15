use test;

CREATE TABLE Table03
(
	id3 int,
    name VARCHAR(255)
);
drop table table03;

CREATE TABLE Table04
(
	id4 int,
    city VARCHAR(255)
);

insert into Table03 (id3, name) VALUES (1, 'bts');
insert into Table03 (id3, name) VALUES (2, 'twice');
insert into Table03 (id3, name) VALUES (3, 'redvelvet');
select * from Table03;

insert into Table04 (id4, city) VALUES (10, 'seoul');
insert into Table04 (id4, city) VALUES (20, 'ny');
insert into Table04 (id4, city) VALUES (30, 'london');
select * FROm Table04;

-- union
select * from Table03
UNION
SELECT * from Table04;

-- alias
select id3 id, name nc from Table03
UNION
SELECT city, id4 from Table04;

-- UNION ALL
SELECT * FROM Table03
UNION ALL 
SELECT * FROM Table04;

-- x
SELECT * FROM Table03
UNION ALL 
SELECT city FROM Table04; -- cloumn 의 갯수가 맞지 않아서










