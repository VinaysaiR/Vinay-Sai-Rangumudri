
-- 1. Write query to create table product with below shown structure Figure 1. (schema – sakila). 

use sakila;
Create table product(
	product_id int not null primary key,
    product_name varchar(50),
    preventive_maintenance json,
    repair_schedule json);
    
desc product;
-- 2. Write query to insert rows in table product, values can be taken from below shown Figure 2. (schema – sakila). 

USE SAKILA;
insert into product values
(101,'Honda Amaze','{"Part":"Motor","EngineerName":"Astha","MaintenenceDate":"1989-02-16"}','{"repairDate":"1992-10-14","Expenditure":9000}'),
(102,'Honda City','{"Part":"Sterring","EngineerName":"Mayank","MaintenenceDate":"1985-04-16"}','{"repairDate":"1989-01-14","Expenditure":19000}'),
(103,'Honda WR-v','{"Part":"Seat","EngineerName":"Neha","MaintenenceDate":"1993-03-12"}','{"repairDate":"1994-01-14","Expenditure":10000}'),
(104,'Honda Jazz','{"Part":"Motor","EngineerName":"Astha","MaintenenceDate":"1997-02-10"}','{"repairDate":"1996-01-12","Expenditure":5000}'),
(105,'Honda BR-v','{"Part":"Clutch Plate","EngineerName":"Sameer","MaintenenceDate":"2020-02-10"}','{"repairDate":"2020-01-03","Expenditure":45000}');

SELECT * FROM sakila.product;

-- 3. Write query to select result set from table product as shown in Figure 3. (schema – sakila). 

USE SAKILA;
select product_id,product_name,preventive_maintenance ->> '$.Part' Part,
preventive_maintenance ->> '$.MaintenenceDate' MaintenenceDate,
repair_schedule->> '$.Expenditure' Expenditure from product;

-- 4. Write query to select result set from table product as shown in Figure 4. (schema – sakila). 

USE SAKILA;
select product_id,product_name,preventive_maintenance ->> '$.EngineerName' EngineerName,
preventive_maintenance ->> '$.MaintenenceDate' MaintenenceDate from product;

-- 5. Write query to select result set from table product as shown in Figure 5. (schema – sakila). 

USE SAKILA;
select product_id,product_name,
preventive_maintenance ->> '$.Part' Part,
preventive_maintenance ->> '$.EngineerName' EngineerName,
preventive_maintenance ->> '$.MaintenenceDate' MaintenenceDate,
repair_schedule ->> '$.repairDate' RepairDate,
repair_schedule ->> '$.Expenditure' Expenditure from product;
