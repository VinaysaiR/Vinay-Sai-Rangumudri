
-- Q1.Write query to select all record from table customer (schema - sakila).
Use sakila;
select * from customer ;
/* refer to attachment(table_customer)*/

-- Q2.Write query to select record from table customer for fields customer_id (Alias - ID), first_name (FName), last_name (LName), email (EmailID) (schema - sakila).
USE sakila;
SELECT customer_id ID, first_name FName,last_name LName,email EmailID from customer;
/* refer to attachment(table_feild)*/

-- Q3.Write query to display film title starting with alphabet ‘A’ and ending with alphabet ‘r’ from table film (schema - sakila).
USE sakila;
select title 'Film Title' from film where title like 'A%r';
/*refer attachment (A__R)*/

-- Q4.Write query to display first 100 records from table customer (schema - sakila).
USE sakila;
select * from customer limit 100;
/*refer attachment (customer_100)*/

-- Q5.Write query to display payment_id, amount, rounded off value of amount and square root of amount from table payment (schema - sakila) in single statement.
USE sakila;
SELECT payment_id,amount,round(amount) Roundoff,sqrt(amount) Squareroot FROM payment;
/*refer attachment (Roundoff__Squareroot)*/

-- Q6.Create backup for schema – sakila.
Create schema Backup_sakila;
/* refer attachments(backup_sakila)*/