use test2;

CREATE TABLE Comment
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	comment VARCHAR(2047) not null,
    memberId VARCHAR(255) not null,
    boardId INT not null,
    inserted TIMESTAMP default NOW(),
    FOREIGN KEY (memberId) REFERENCES Member(id),
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

DESC Comment;

SELECT * FROM Comment;

CREATE TABLE INZ
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	inz INT(11),
    inserted TIMESTAMP default NOW()
);

DESC INZ;
SELECT * FROm INZ;
drop table INZ;








