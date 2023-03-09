/* Q 1. Write a query to create a view active_customer with all details of customer belonging to store id 1 
and with active status = 1. (schema – sakila, table - customer ). */

USE SAKILA;
CREATE VIEW active_customer AS
    SELECT 
        *
    FROM
        customer
    WHERE
        store_id = 1;
-- refer to attach the file (Q.1 active_customer in view)
 
/* Q 2 Write query to create view customer_detail that list the customer detail including city name and address also.
 (schema – sakila)
(Hint: Result set stored in view customer_detail is shown in below picture) */

USE SAKILA;
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    a.address,
    ci.city
FROM
    customer c
        INNER JOIN
    address a ON c.address_id = a.address_id
        INNER JOIN
    city ci ON a.city_id = ci.city_id;
-- refer to attach the file (Q.2 customer_detailes)

/* 3. Create three users Alpha, Beta and Gama in MySQL Wokbench and assign below mentioned roles\privileges to these users. */
/* refer to attach file (
Q.3 alpha
Q.3 beta
Q.3 gama
)
 -- please refer three jpg files attached for this question(Alpha,Beta,Gama)