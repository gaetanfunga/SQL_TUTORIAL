create table event_log (user_id int,	order_date_time int)
insert into event_log values(7494212,	1535308430),
(7494212,	1535308433),
(1475185,	1535308444),
(6946725,	1535308475),
(6946725,	1535308476),
(6946725,	1535308477)

/** Below event_log table that records every time a user touches the order, it tracks the user_id and order_date_time.						
						
Write an SQL query to find out how many users toouched more than 1000 but less than 2000 orders in the process?	*/	

/* Me*/
select USER_ID as touched_id, order_date_time as touched_order
from event_log 
where  USER_ID>1000 and order_date_time<2000

/* chat GPT*/
SELECT touched_id, touched_order
FROM (
    SELECT USER_ID as touched_id, COUNT(order_date_time) as touched_order
    FROM event_log
    GROUP BY USER_ID
) AS subquery
WHERE touched_order > 1000 AND touched_order < 2000;

/* Alternative*/
SELECT					
    user_id,					
    COUNT(DISTINCT order_date_time) AS touched_orders					
FROM					
    event_log					
GROUP BY					
    user_id					
HAVING					
    COUNT(DISTINCT order_date_time) > 1000 AND COUNT(DISTINCT order_date_time) < 2000;					



