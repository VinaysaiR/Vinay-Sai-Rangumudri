
/* Q.1. Write query to display result set shown in figure 1 using inner join (schema - sakila) */

use sakila;
SELECT 
    ci.city_id, 
    ci.city, 
    co.country_id, 
    co.country
FROM
    city ci
        INNER JOIN
    country co ON ci.country_id = co.country_id;
-- please refer attachment(innerjoin_Q1)


/* Q.2. Write query to join tables film, film_category and category using inner join. 
Result set should be like shown in figure 2 (schema - sakila) */

use sakila;
SELECT 
    f.film_id, 
    f.title, 
    f.description, 
    fc.category_id, 
    c.name
FROM
    film f
        INNER JOIN
    film_category fc ON f.film_id = fc.film_id
        INNER JOIN
    category c ON fc.category_id = c.category_id;
-- please refer attachment(innerjoin_Q2)


/* 3. Write query to join tables film, inventory and film_text using left join. 
Result set should be like shown in figure 3 (schema - sakila)  */

use sakila;
SELECT 
    f.film_id,
    f.title,
    f.description,
    i.inventory_id,
    ft.description
FROM
    film f
        INNER JOIN
    inventory i ON f.film_id = i.film_id
        INNER JOIN
    film_text ft ON i.film_id = ft.film_id;
 -- please refer attachment(innerjoin_Q3)


/* 4. "Write query to display the staff_id, first_name, last_name, amount, payment_date, rental_date and
 return_date from tables staff, payment and rental using inner join (schema - sakila)" */
 
 use sakila;
SELECT 
    *
FROM
    rental;
SELECT 
    s.staff_id,
    s.first_name,
    s.last_name,
    p.amount,
    p.payment_date,
    r.rental_date,
    r.return_date
FROM
    staff s
        INNER JOIN
    payment p ON s.staff_id = p.staff_id
        INNER JOIN
    rental r ON p.staff_id = r.staff_id;
 -- please refer attachment(innerjoin_Q4)