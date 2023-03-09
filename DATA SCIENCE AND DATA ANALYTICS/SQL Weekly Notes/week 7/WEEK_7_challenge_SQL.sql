/* 1. Write query to make summary of table payment 
(calculate Total amount, average amount, minimum amount, maximum amount, variance of amount). 
Result set should give output as shown in figure 1 (schema - sakila). */ 
use sakila;
select 'Parameter', 'Value'
from payment
union 
select 'Total Amount',sum(amount)
from payment
union 
select 'Average Amount',avg(amount)
from payment
union 
select 'Minimum Amount',min(amount)
from payment
union 
select 'Maximum Amount',max(amount)
from payment
union 
select 'variance of Amount',variance(amount)
from payment;
-- please attach the picture (Q.1)

/* 2. Write query to calculate Total amount, average amount, minimum amount of amount from table payment
 for customer group using window function. (schema - sakila). Output for result set is shown in figure 2. */
select payment_id, customer_id, staff_id, 
sum(amount) over(partition by customer_id) TotalSum,
avg(amount) over(partition by customer_id) Average,
min(amount) over(partition by customer_id) Minimum
from payment;
-- please attach the picture (Q.2)

/* 3. Write column name/s for below written tables in which null values are allowed (schema – sakila). 
(Hint: use DESC command) */
desc Film_category; -- 0/Null no null values
desc city; -- 0/Null no null values
desc Address; -- 2/Null POSTAL CODE and address2 contains null values
desc store ;--  0/Null no null values
desc film_actor; -- 0/Null no null values
-- all the above mentioned  contains only null  values
-- please attach the picture (Q.3)

/* 4. Write query to calculate the incline/decline for number of payments made on each date. 
(schema – sakila, table – payment). Output for result set is shown in figure 3.*/
select payment_date,count(payment_id) current_count,
lag(count(payment_id),1) over (order by payment_date) previous_count,
count(payment_id)-lag(count(payment_id),1) over (order by payment_date) countDifference
from payment
group by date(payment_date)
order by date(payment_date);
-- please attach the picture (Q.4)
