-- DEFAULT

CREATE TABLE MyTable13
(
	id int primary key auto_increment,
    title VARCHAR(255) not null,
    body varCHar(255) not null,
    inserted timestamp
);

insert into MyTable13
(title,body,inserted)
VALUES
('title1', 'body1', NOW());

SELECT * FROM MyTable13;
DESC MyTable13;

CREATE TABLE MyTable14
(
	id int primary key auto_increment,
    title varchar(255) not null,
    body varchar(255) not null,
    inserted timestamp default now()
);

insert into MyTable14
(title, body)
VALUES
('title1', 'body1');

SELECT * FROM MyTable14;
DESC MyTable14;


CREATE TABLE MyTable15
(
	col1 int default 10,
    col2 varchar(255) default 'hello'
    );
    
    insert into MyTable15
    (col1)
    Values
    (30);
    
    insert into MyTable15
    (col2)
    VALUES
    ('hi');
    
    SELECT * FROM MyTable15;

use test2;
CREATE TABLE test
(
	num int primary key auto_increment,
    rrn varchar(255) not null,
    inserted timestamp default now()
);
drop table test;

CREATE TABLE MyTable16
(
	id INT,
    title VARCHAR(255),
    body VARCHAR(255)
);

-- modify column
ALTER TABLE MyTable16
MODIFY COLUMN body VARCHAR(1023);

desc MyTable16;

-- add not null
ALTER TABLE MyTable16
MODIFY title varchar(255) not null;

INSERT INTO MyTable16
(id, title)
VALUES
(1,'title1');

SELECT * FROM MyTable16;

ALTER TABLE MyTable16
MODIFY body VARCHAR(1023) not null;

update MyTable16
set body = ''
WHERE body is null; -- 이렇게 해주고 ALTER body를 해야 오류가 안난다 

-- add unique
ALTER TABLE MyTable16
add unique (id);

DESC MyTable16;

-- add primary key
alter table MyTable16
add primary key (id);

-- remove primary key
alter table MyTable16
drop primary key;


-- add auto_increment
alter table MyTable16
MODIFY id int primary key auto_increment;







