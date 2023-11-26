create table my_Employee(id int, name varchar(50), production int, manager_id int)
insert into my_Employee values 
(10,	'Anil',	50000,	18),
(11,	'Vikas',	75000,	16),
(12,	'Nisha',	40000,	18),
(13,	'Nidhi',	60000,	17),
(14,	'Priya',	80000,	18),
(15,	'Mohit',	45000,	18),
(16,	'Rajesh',	90000, 0),
(17,	'Raman',	55000,	16),
(18,	'Santosh',	65000,	17)

SELECT 
    e.manager_id,
    m.name AS manager,
    AVG(e.production) AS avg_salary_under_manager
FROM 
    my_Employee e
    JOIN my_Employee m ON e.manager_id = m.id
WHERE 
    e.manager_id <> 0
GROUP BY 
    e.manager_id, m.name;

