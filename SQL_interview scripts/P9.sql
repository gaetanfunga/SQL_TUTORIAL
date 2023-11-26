create table Profit(profit int)
insert into Profit values(10000),
(5800),
(-5200),
(-48000),
(65000),
(35000),
(-12004),
(4500),
(-1000)
select*
from Profit

SELECT				
  SUM(CASE WHEN profit > 0 THEN profit ELSE 0 END) as sum_positive,				
  SUM(CASE WHEN profit < 0 THEN profit ELSE 0 END) as sum_negative				
FROM Profit;				

