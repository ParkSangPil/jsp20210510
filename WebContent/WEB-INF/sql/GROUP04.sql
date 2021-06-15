use test2;

SELECT * FROM Board
ORDER BY id DESC;

SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT b.*, count(c.id) FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
GROUP BY b.id
ORDER BY b.id DESC;

select b.id boardId, 
	   b.title title, 
	   m.name name,
       count(c.id) numberOFComment, 
	   b.inserted 
FROM Board b 
join Member m 
ON b.memberId = m.id 
LEFT JOIN Comment c
ON b.id = c.boardId
GROUP BY b.id
ORDER BY boardId DESC ;

SELECT m.*, count(b.id), count(c.id)
FROM Member m LEFT JOIN Board b ON m.id = b.memberId
LEFT JOIN Comment c ON m.id = c.memberId
WHERE m.id = 'asd';

SELEct * FROM Board WHERE memberId= 'asd';
SELEct * FROM Comment WHERE memberId= 'asd';
DESC Comment;
DESC Member;
SELECT * FROM Member m left join Board b on m.id = b.memberId; 
SELECT * FROM Member m left join Board b on m.id = b.memberId left join Comment c ON b.id = c.boardId ;
SELECT * FROM Board;

SELECT m.id,
	   m.password, 
	   m.name, 
	   m.birth, 
	   m.inserted, 
	   count(DISTINCT b.id) numberOfBoard, 
	   count(DISTINCT c.id) numberOfComment 
				FROM Member m LEFT join Board b on m.id = b.memberId 
				            left join Comment c ON m.id = c.memberId 
				WHERE m.id = 'asd';







