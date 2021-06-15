use test;
-- https://joins.spathon.com/ 에서 잘 나와있다 참고 ㄱㄱ

CREATE TABLE Users(
id int,
name VARCHAR(255)
);

CREATE TABLE Likes(
	userId int,
    `like` varchar(255)
    );

INSERT INTO Users (id, name) VALUES (1,'Patrik');
INSERT INTO Users (id, name) VALUES (2,'Albert');
INSERT INTO Users (id, name) VALUES (3,'Maria');
INSERT INTO Users (id, name) VALUES (4,'Darwin');
INSERT INTO Users (id, name) VALUES (5,'Elizabeth');

SELECT * FROM Users;

INSERT INTO Likes (userId, `like`) VALUES (1,'Climbing');
INSERT INTO Likes (userId, `like`) VALUES (1,'Code');
INSERT INTO Likes (userId, `like`) VALUES (3,'Stars');
INSERT INTO Likes (userId, `like`) VALUES (4,'Apples');
INSERT INTO Likes (userId, `like`) VALUES (6,'Rugby');

SELECT * FROM Likes;

SELECT * FROM Users, Likes;

-- join
SELECT * FROM Users JOIN Likes ON Users.id = Likes.userId;
SELECT * FROM Users inner JOIN Likes ON Users.id = Likes.userId; -- 두개다 같은 의미

-- left join
SELECT * FROM Users left Join Likes ON Users.id = Likes.userId;

-- right join
SELECT * FROM Users RIGHT Join Likes ON Users.id = Likes.userId;

-- full (outer) join
-- SELECT * FROM Users full Join Likes ON Users.id = Likes.userId;

-- 좋아하는 거시 없는 사용자 찾기
SELECT * FROM Users LEFT JOIN Likes ON Users.id = Likes.userId
WHERE Likes.userId is null;

-- 사용자들이 좋아하지 않는 것
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId
WHERE Users.id is Null;












