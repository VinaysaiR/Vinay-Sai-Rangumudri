USE employees2;
SELECT * FROM employees2;
SELECT DISTINCT gender FROM employees2;
USE employees; # use employees database
SELECT * FROM titles; # to select the table
select distinct title from titles; -- particular feilds in the column can be identified by the condition
select * from titles; # to select the table
select emp_no Employee_No, title Title, from_date Starting_Date, to_date Ending_Date from titles; -- to change the values from indexs
select * from titles where title = 'staff';
select * from titles;
use employees; -- Use employee database
select * from employees; -- select emplyoees table
select first_name, last_name from employees Where gender = 'F';
select * from titles;
select emp_no Employee_no, title Title, from_date Starting_date, to_date Last_date from titles where title like 's%';
select * from titles where title like '%r';
select * from titles where title like 's%r';
select * from titles;
select * from titles where title like 's%a_f'; # wildcard methods
use employees;
select * from salaries;
select * from titles where title not like 'S%a_f'; # here i was using not like method
select * from titles where title like 'Senior S_%';
select * from employees;
Select * from employees where first_name like 'Georg_';
select * from employees where gender = 'F' limit 6;
select first_name, last_name from employees where gender = 'F' limit 6;
use employees;
select * from salaries;
select salary Old_salary, salary + (salary*0.05) New_salary from salaries; # 5 percentage salary
select salary old_salary, salary / 2 New_salary from salaries;
use employees;
select * from salaries;
select * from salaries where emp_no = '10014';
select salary old_salary, salary - (salary*0.1) new_salary from salaries where emp_no = '10014'; 
select RAND();
select FLOOR(25 + (RAND()*100));
select FLOOR(RAND()*25);
select FLOOR(RAND()*25 + PI()) Result;
create DATABASE tests;
use tests;
CREATE TABLE test(i int);
INSERT INTO test VALUES (1), (2), (3), (4);
SELECT RAND(i) FROM test;
select ceil(5.768686);
select ceil(-5.768686);
select power(7,3);
select power(2,3);
select power(-2,3);
select power(-2,-3);
select sin(25);
select cos(45);
select tan(45);
select cot(25);
select ASIN(0.25);
select ACOS(0.25);
select Asin(0.25), acos(0.25);
select ABS(-0.25);
select CRC32('datascience');
select Degrees(25);
select EXP(25);
select LN(25);
select LOG(25,5);
select log2(25);
select log10(25);
select MOD(22,3);
select round(5.55), round(5.45), round(-5.55), round(-5.45), round(5.45,0), round(5.45,1), round(5.45,2);
select sign(-5.25), sign(0), sign(5.25);
select sqrt(-5.25), sqrt(0), sqrt(5.25);
select truncate(-5.25,1), truncate(5.25,1), truncate(5.25,0), truncate(5,2), truncate(5,-2), truncate(512,-2);
select truncate(15263,-4);
select truncate(15263,-3);
