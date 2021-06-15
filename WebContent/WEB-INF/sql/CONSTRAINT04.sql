CREATE TABLE MyTable12(
id INT primary key auto_increment,
title VARCHAR(255) not null,
body VARCHAR(255) not null
);

-- auto_increment
INSERT INTO MyTable12(
title, body)
VALUES
('title', 'body');

SELECT * FROM MyTable12;




















