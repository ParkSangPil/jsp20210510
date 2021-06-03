use test;
-- ALTER TABLE
CREATE TABLE MyTAble16
(
	id int,
    title VARCHAR(255),
    bodt varchar(255)
);

ALTER TABLE MyTAble16
ADD inserted TIMESTAMP;

desc MyTAble16;

ALTER TABLE MyTAble16
drop COLUMN inserted;







