use test;

CREATE TABLE Table05
(
	name varchar(255) PRIMARY KEY,
    money int not null default 0
);

insert into Table05
(name, money)
VALUES
('kim', 10000);

insert into Table05
(name, money)
VALUES
('lee', 10000);

SELECT * FROM Table05;

UPDATE Table05
SET money = 5000
where name = 'kim';

UPDATE Table05
set money = 15000
WHERE name = 'lee';

rollback; -- commit을 하기 전에 실행시키면 update반영이 안된다

-- 동시 실행
UPDATE Table05
SET money = 5000
where name = 'kim';
UPDATE Table05
set money = 15000
WHERE name = 'lee';

commit; -- 변경 확정 rollback 안됨

SELECT * FROM Table05;






