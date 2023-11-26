create table Employees(department_name varchar(50),	employee_id	int, employee_name varchar(50))
insert into Employees values ('Sales',	123,	'John Doe'),
('Sales',	211,	'Jane Smith'),
('HR',	556,	'Billy Bob'),
('Sales',	711,	'Robert Hayek'),
('Marketing',	235,	'Edward Jorgson'),
('Marketing',	236,	'Christine Packard')

create table Salaries (salary int,	employee_id int,	employee_name varchar(50))
insert into Salaries values(500,	123,	'John Doe'),
(600,	211,	'Jane Smith'),
(1000,	556,	'Billy Bob'),
(400,	711,	'Robert Hayek'),
(1200,	235,	'Edward Jorgson'),
(200,	236,	'Christine Packard')

select*
from Employees

select*
from Salaries


SELECT
    department_name
FROM
    Employees e
JOIN
    Salaries s ON e.employee_id = s.employee_id
GROUP BY
    department_name
HAVING
    AVG(s.salary) < 500;





