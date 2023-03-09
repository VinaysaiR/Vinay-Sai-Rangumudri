
-- Q.1 Write query to select film_id, title, length of title, description (to be displayed in upper case) from table film (schema - sakila).
USE sakila;
select film_id, title, length(title), upper(description) 'Description' from film;

/* please refer attachment(FILMID)*/


-- Q.2 Write query to display result set shown in figure 1 from table film (schema - sakila).
USE sakila;
SELECT concat(upper(title),upper(title),upper(title)) title from film;

 /* please refer attachment(TITLE_CONCAT)*/
 

-- Q.3 Write query to display result set shown in figure 2 from table film (schema - sakila).
USE sakila;
SELECT film_id,title, LEFT(description,13) from film;

/* please refer attachment(LEFT_description)*/


-- Q.4 Write query to display result set shown in figure 3 from table film (schema - sakila).
USE sakila;
select title,concat(reverse(title),reverse(title)) Codeword from film;

/* please refer attachment(Repeatreverse_title)*/


-- Q.5 Write query to display number of days since the last update in table actor (schema - sakila).
USE sakila;
select datediff(current_date(),last_update) Number_of_days from actor;

/* please refer attachment(datediff_actor)*/


-- Q.6 Write query to display result set shown in figure 4 from table customer (schema - sakila).
USE sakila;
select create_date,date(create_date) Date,time(create_date) Time from customer;

/* please refer attachment(createdate_customer)*/

