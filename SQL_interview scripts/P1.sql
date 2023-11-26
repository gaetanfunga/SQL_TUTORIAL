create table Associates(Name varchar(50),	Process varchar(50))
insert into Associates values('name_1',	'process_1'),
('name_1',	'process_2'),
('name_2',	'process_3'),
('name_2',	'process_4'),
('name_2',	'process_5'),
('name_3',	'process_6')

create table Production(Process varchar(50),	Productivity int)
insert into Production values('process_1',	1000),
('process_2',	1500),
('process_3',	34000),
('process_4',	29000),
('process_5',	40000),
('process_6',	4400)

SELECT TOP 3
    a.Name AS AssociateName,
    SUM(p.Productivity) AS TotalProductivity
FROM
    Associates a
JOIN
    Production p ON a.Process = p.Process
GROUP BY
    a.Name
ORDER BY
    TotalProductivity DESC;





