CREATE DATABASE week2;
USE week2;


/*1. Write query to create table actor. 

Column Name         Data Type                    Constraint
actor_id            SMALLINT UNSIGNED            PRIMARY KEY  
first_name          VARCHAR(45)                  NOT NULL
last_name           VARCHAR(45)                  NOT NULL 
*/
CREATE TABLE actor (
    actor_id SMALLINT UNSIGNED,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    PRIMARY KEY (actor_id)
);
SELECT * FROM actor;


/*2. Write query to create table country.

Column Name          Data Type             Constraint
country_id           SMALLINT UNSIGNED     PRIMARY KEY  
country              VARCHAR(50)           NOT NULL
last_update          TIMESTAMP             NOT NULL, DEFAULT CURRENT_TIMESTAMP */
CREATE TABLE country (
    country_id SMALLINT UNSIGNED,
    country VARCHAR(50) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (country_id)
);
SELECT * FROM country;


/*3. Write query to create table city.

Column Name       Data Type            Constraint
city_id           SMALLINT UNSIGNED    PRIMARY KEY  
city              VARCHAR(50)          NOT NULL
country_id        SMALLINT UNSIGNED    FOREIGN KEY (fk_city_country), country (country_id) 
last_update       TIMESTAMP            NOT NULL, DEFAULT CURRENT_TIMESTAMP 
*/
CREATE TABLE city (
    city_id SMALLINT UNSIGNED PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    country_id SMALLINT UNSIGNED,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (country_id)  REFERENCES country (country_id)
);
SELECT * FROM city;


/*4. Write query to create table address.

Column Name       Data Type            Constraint

address_id        SMALLINT UNSIGNED    PRIMARY KEY  
address           VARCHAR(50)          NOT NULL
address2          VARCHAR(50)          DEFAULT NULL
district          VARCHAR(20)          NOT NULL
city_id           SMALLINT UNSIGNED    FOREIGN KEY (fk_address_city), city (city_id) 
postal_code       VARCHAR(10)          DEFAULT NUL
phone             VARCHAR(20)          NOT NULL
last_update       TIMESTAMP            NOT NULL, DEFAULT CURRENT_TIMESTAMP 
*/
CREATE TABLE address (
    address_id SMALLINT UNSIGNED PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    address2 VARCHAR(50) DEFAULT NULL,
    district VARCHAR(20) NOT NULL,
    city_id SMALLINT UNSIGNED,
    FOREIGN KEY (city_id)
        REFERENCES city (city_id),
    postal_code VARCHAR(10) DEFAULT NULL,
    phone VARCHAR(20) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM address;


-- 5. Write a query to insert values in table customer. (schema - sakila)
-- describe customer;
/* customer_id	smallint unsigned	NO	PRI		auto_increment
   store_id	    tinyint unsigned	NO	MUL		
   first_name	varchar(45)     	NO			
   last_name	varchar(45)	        NO	MUL		
   email	    varchar(50)	        YES			
   address_id	smallint unsigned	NO	MUL		
   active	    tinyint(1)	        NO		1	
   create_date	datetime	        NO			
   last_update	timestamp	        YES		CURRENT_TIMESTAMP	DEFAULT_GENERATED on update CURRENT_TIMESTAMP */
   
USE sakila;  -- customer_id	smallint unsigned	NO	PRI		auto_increment
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date, last_update) VALUES 
(1,'VINAY SAI','RANGUMUDRI','vinaysairangumdri2001@gmail.com',1,1,'2001-12-12 22:04:36','2020-12-12 03:12:12'),
(2,'PRAVALIKA','RANGUMUDRI','pravalikarangumudri2002@gmail.com',1,1,'2002-01-12 23:16:11','2019-12-12 05:12:12'),
(1,'HEMA','VELLIVENI','hemavelliveni1997@gmail.com',1,1,'1997-02-12 15:06:45','2010-12-12 05:12:12'),
(2,'HARI','MANYAM','harimanyam1998@gmail.com',1,1,'1998-03-12 22:04:36','2008-12-12 04:12:12');
SELECT * FROM customer;
# refer attachment(Q.5 customer and customer_table)


-- 6. Write a query to insert values in table rental. (schema - sakila)
USE sakila;
INSERT INTO rental VALUES
('-100','2001-9-3','101','1','2001-11-2','1','2002-2-3 21:30:53'),
('-90','2001-8-3','102','2','2001-12-3','1','2002-2-3 21:30:53'),
('-80','2001-7-3','103','3','2002-1-3','2','2002-2-3 21:30:53'),
('-70','2001-6-3','104','4','2002-2-8','2','2002-2-3 21:30:53'),
('-60','2002-1-3','105','5','2002-2-3','1','2002-2-3 21:30:53');
SELECT * FROM rental;
# refer attachment(Q.6 rental and rental_table)