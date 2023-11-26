create table Users(name varchar(50),	email varchar(50))
insert into Users values('John',	'John@'),
('Jane',	'Jane@'),
('Alice',	'Alice@'),
('Lisa',	'Lisa@')

select*
from Users
	SELECT name, COUNT(*)		
	FROM users		
	GROUP BY name		
	HAVING COUNT(*) > 1;		
		
	SELECT name, email, COUNT(*)		
	FROM users		
	GROUP BY name, email		
	HAVING COUNT(*) > 1;		
