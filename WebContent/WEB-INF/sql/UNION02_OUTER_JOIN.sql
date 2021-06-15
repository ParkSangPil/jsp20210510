-- OUTER JOIN
SELECT * FROM Users;
SELECT * FROM Likes;

SELECT * FROM Users u left join Likes l ON u.id = l.userId
UNION
SELECT * FROM Users u right join Likes l ON u.id = l.userId;