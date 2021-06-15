use test2;

-- 게시물을 작성하지 않은 Member의 id를 나열해!
SELECT m.id, m.name FROM Member m left JOIN Board b
 ON m.id = b.memberId
 WHERE b.memberId is null;