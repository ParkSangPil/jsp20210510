use test;

-- member
CREATE TABLE MyTable17
(
	id VARCHAR(255) primary key,
    name varchar(255) not null
);

-- board
drop table MyTable18;
create table MyTable18
(
	id int primary key auto_increment,
	title VARCHAR(255) not null,
    t17Id VARCHAR(255) not null,
    FOREIGN KEY(t17Id) references MyTable17(id) -- MyTable17(id) 에 존재해야 t17Id에 들어갈 수 있다는 코드
);

INSERT INTO MyTable17
(id, name)
vALUES
('donald', 'trump');

INSERT INTO MyTable18 -- 삭제하려면 얘 먼저 삭제해야함
(title, t17Id)
VALUES
('usa', 'donald');

SELECT * FROM MyTable18;

INSERT INTO MyTable18
(title, t17Id)
VALUES
('korea', 'kim');

DELETE FROM MyTable17 --  두번째
WHERE id = 'donald';

DELETE FROM MyTable18  -- 첫번째
WHERE t17Id = 'donald';






