desc Member;
SELECT * FROM Member;



alter table Member
add PRIMARY KEY(id);

ALTER TABLE Member
MODIFY 
password VARCHAR(255) not null;

ALTER TABLE Member
MODIFY 
name VARCHAR(255) not null;

ALTER TABLE Member
MODIFY COLUMN
birth date not null;

ALTER TABLE Member
MODIFY 
inserted timestamp not null default now();

insert into Member
(id, password, name, birth)
vALUES
('donald','trump','trump','2011-01-01');

SELECT * FROM Member;
SELECT * FROM Board;

