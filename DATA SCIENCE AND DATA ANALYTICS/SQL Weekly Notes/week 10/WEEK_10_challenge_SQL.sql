/* Q.1. Write query to create procedure getaddress using cursor to fetch address from address table (schema – sakila).  
Query to use - SELECT address FROM  address;
Cursor Name – addressdetail */

USE SAKILA;

delimiter $$
CREATE  PROCEDURE getaddress(INOUT a VARCHAR(16000))
BEGIN
	DECLARE finished INT DEFAULT 0;
    DECLARE addresslist VARCHAR(400) DEFAULT '';
    
    DECLARE addressdetails CURSOR FOR
		SELECT address FROM address;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished =1;
	OPEN addressdetails;
    loopstart:
    LOOP
		FETCH addressdetails INTO addresslist;
        IF finished = 1 THEN 
			LEAVE loopstart;
		END IF;
        
        SET a = concat(addresslist,';',a);
	END LOOP loopstart;
    CLOSE addressdetails;
END $$
delimiter ;


SET @a=' ';
CALL getaddress(@a);
SELECT @a;

-- please referce to attach the jpg Q.1

/* Q.2. Write query to create procedure getactorname using cursor to fetch first_name,last_name from actor table (schema – sakila).  
Query to use - SELECT first_name, last_name FROM  actor;
Cursor Name – actornamedetail*/
USE SAKILA;
delimiter $$
CREATE PROCEDURE getactorname(INOUT firstname VARCHAR(16000),INOUT lastname VARCHAR(16000))
BEGIN
	DECLARE finished INT DEFAULT 0;
    DECLARE firstnamelist VARCHAR(400) DEFAULT '';
    DECLARE lastnamelist VARCHAR(400) DEFAULT '';
    
    DECLARE actornamedetail CURSOR FOR
		SELECT first_name,last_name FROM actor;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished =1;
    
    OPEN actornamedetail;
    loopstart:
    LOOP
		FETCH actornamedetail INTO firstnamelist,lastnamelist;
		IF finished = 1 THEN 
			LEAVE loopstart;
		END IF;
        SET firstname = concat(firstnamelist,';',firstname);
        SET lastname = concat(lastnamelist,';',lastname);
	END LOOP loopstart;
    CLOSE actornamedetail;
END $$
delimiter $$
 
set @f='';
set @l='';
call getactorname(@f,@l);
select @f Firstname,@l Lastname;
-- please refer to attach the jpg.image Q.2