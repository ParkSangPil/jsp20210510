SELECT * FROM Member;
DESC Member;

CREATE TABLE Board
(
	id int PRIMARY key auto_increment,
	title VARCHAR(255) NOT NULL,
    body VARCHAR(2047) not null,
    memberId VARCHAR(255) not null,
    inserted TIMESTAMP DEFAULT now()
);

DESC Board;
SELECT * FROM Board;
SELECT * from Member;

use test2;

DELETE FROM Board
WHERE memberId not in (
	select id from Member
);

ALTER TABLE Board
add FOREIGN KEY (MemberId) 
REFERENCES Member(id);







