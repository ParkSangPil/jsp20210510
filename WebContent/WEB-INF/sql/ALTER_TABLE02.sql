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
MODIFY 
birth date not null;

ALTER TABLE Member
MODIFY 
inserted timestamp not null default now();