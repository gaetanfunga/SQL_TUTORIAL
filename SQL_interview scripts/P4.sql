create table Clients (id int,	name varchar(50),	referredby varchar(50))
insert into Clients values(1,	'John',	NULL),
(2,	'Jane',	NULL),
(3,	'Anne',	2),
(4,	'Eric',	NULL),
(5,	'Pat',	1),
(6,	'Alice',	2)

SELECT		
    name		
FROM		
    Clients		
WHERE		
    referredby IS NULL OR referredby <> 2;		

