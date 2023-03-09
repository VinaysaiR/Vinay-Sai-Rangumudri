use foodie_fi;
create view customer_id1 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id =1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 1 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 2 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 3 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 4 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 1));

create view customer_id2 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 2));

create view customer_id13 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using (plan_id) where plan_id not in (0,4) and customer_id = 13 limit 1));

create view customer_id15 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 15) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 1 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 15));


create view customer_id16 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 16 limit 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 1 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 16 limit 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 2 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 16 limit 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 3 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 16 limit 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 4 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 16 limit 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 5 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 3 and customer_id = 16));


create view customer_id18 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 2 and customer_id = 18) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 1 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 2 and customer_id = 18) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 2 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 2 and customer_id = 18) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 3 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 2 and customer_id = 18) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 4 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 2 and customer_id = 18) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 5 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id = 2 and customer_id = 18));


create view customer_id19 as (
(select customer_id, plan_id, plan_name, start_date as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 19 limit 1) union all
(select customer_id, plan_id, plan_name, date_add(start_date, interval 1 month) as "payment_date", price as "amount" from plans join subscriptions using(plan_id) where plan_id not in (0,4) and customer_id = 19)) ;


create table payments as (
select *, rank() over(order by payment_date) as "payment_order" from customer_id1 union all
select *, rank() over(order by payment_date) as "payment_order" from customer_id2 union all
select *, rank() over(order by payment_date) as "payment_order" from customer_id13 union all
select *, rank() over(order by payment_date) as "payment_order" from customer_id15 union all
select *, rank() over(order by payment_date) as "payment_order" from customer_id16 union all
select *, rank() over(order by payment_date) as "payment_order" from customer_id18 union all
select *, rank() over(order by payment_date) as "payment_order" from customer_id19);

select * from payments;