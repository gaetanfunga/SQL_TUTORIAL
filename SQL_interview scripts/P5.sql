create table Invoices(col_name varchar(50),	data_type varchar(50),	allow_nulls varchar(50))
insert into Invoices values('id', 	'int',	'no'),
('Billingdate',	'date',	'no'),
('customerid',	'int',	'no')

create table Customers (col_name varchar(50),	data_type varchar(50),	allow_nulls varchar(50))
insert into Customers values('id', 	'int',	'no'),
('name', 	'varchar',	'no'),
('referredby', 	'int',	'yes')

select*
from Customers
select*
from Invoices

SELECT 
    I.data_type AS Billing_Date, 
    I.col_name AS Invoice_ID,
    C1.col_name AS Customer_Name,
    C2.col_name AS Referring_Customer
FROM 
    Invoices I
    JOIN Customers C1 ON I.col_name = 'customerid' AND C1.col_name = I.col_name
    LEFT JOIN Customers C2 ON C1.col_name = 'referredby' AND C2.col_name = C1.allow_nulls
ORDER BY 
    I.data_type, I.col_name;
