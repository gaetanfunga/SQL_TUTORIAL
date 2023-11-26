create table Runner(id int,name varchar(50))
insert into Runner values(1,	'John'),
(2,	'Jane'),
(3,	'Alice'),
(4,	'Bobby'),
(5,	'Lisa')

create table Races(id	int, event varchar(50),	winner_id int)
insert into Races values(1,	'100 Meter',	2),
(2,	'500 Meter',	3),
(3,	'200 Meter',	2),
(4,	'1000 Meter',	NULL)

select*
from Races
select*
from Runner

SELECT * FROM Runner WHERE id NOT IN (SELECT winner_id FROM Races WHERE winner_id IS NOT NULL);

SELECT *			
FROM Runner			
LEFT JOIN Races ON Runner.id = Races.winner_id			
WHERE Races.winner_id IS NULL;			

