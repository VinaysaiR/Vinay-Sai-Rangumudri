
/* Q.1. Write a single query to select payment_id, customer_id, staff_id, rental_id, amount from table payment (schema - sakila) which satisfies both below mentioned conditions.
      a. Range for customer_id 10,20,30,40,50,60,70,80,90,100
	  b. staff_id is 2     */
use sakila;
SELECT 
    payment_id, customer_id, staff_id, rental_id, amount
FROM
    payment
WHERE
    customer_id 
        IN (10 , 20, 30, 40, 50, 60, 70, 80, 90, 100)
        AND staff_id = 2;
/* PLEASE REFER ATTACHMENT(CUSTOMERID_STAFFID) */


/* Q.2 Write query to display record of table film (schema - sakila) 
	   ordered by rating in descending order. */
USE SAKILA;
SELECT 
    * 
FROM 
    film 
ORDER BY rating DESC;
/* PLEASE REFER ATTACHMENT(Film_DESC) */


/* Q.3 Write a single query to display payment_id, amount and updated_amount from table payment (schema - sakila) which supports the result set with below mentioned criteria.
             a. amount is greater than 5.0
             b. updated_amount is double of amount and rounded off */
USE SAKILA;
SELECT 
    payment_id, amount, ROUND(amount * 2) updated_amount
FROM
    payment
WHERE
    amount > 5.0;
/* PLEASE REFER ATTACHMENT(Amount_roundoff) */
  
  
/* Q.4 Write a single query to display below mentioned values from table payment for each customer (customer_id) (schema - sakila)
        a. customer_id 
        b. Total sum of the payment
        c. Average of the payment
        d. Standard deviation of the payment
        e. Variance of the payment  */
USE SAKILA;
SELECT 
    customer_id,
    SUM(amount) 'Total sum of payment',
    AVG(amount) 'Average of payment',
    STDDEV(amount) 'Standard deviation of payment',
    VAR_POP(amount) 'Variance of payment'
FROM
    payment
GROUP BY customer_id;
/* PLEASE REFER ATTACHMENT(OP_customerid) */


/* 5. Write a query to display city_id, city, country_id 
from table city for country name starting with A and B (schema - sakila) (Hint: Use subquery) */
USE SAKILA;
select 
        city_id, city, country_id 
from 
        city 
where 
        country_id 
in (select country_id from country where country like 'A%' or country like 'B%');
/* PLEASE REFER ATTACHMENT(country_A_or_B) */


/* 6. What is the difference between ANY and ALL keywords with respect to subquery in SQL? (MCQ)

         A. ALL – Comparison with every value ANY – Comparison with atleast one value
         B. ALL – Comparison with atleast one value ANY – Comparison with every value
         C. ALL – Comparison with every value ANY – Comparison with atleast two value
         D. ALL – Comparison with atleast two value ANY – Comparison with atleast one value */
         
-- Ans : Option (A)
--       A. ALL – Comparison with every value ANY – Comparison with atleast one value
