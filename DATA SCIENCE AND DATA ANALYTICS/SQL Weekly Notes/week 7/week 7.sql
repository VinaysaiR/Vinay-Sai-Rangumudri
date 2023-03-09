create database employee5;
use employee5;
create table employeeinfo (
        emp_no       INT           ,
        birth_date   DATE          ,
        first_name   VARCHAR(14)   ,
        last_name    VARCHAR(14)   ,
        gender       ENUM ('M','F'),
        hire_date    DATE          ,
        primary key (emp_no)
        );
 desc employeeinfo;
 select * from employeeinfo;
 insert into employeeinfo values
 (324,'1999-12-21','vinay sai','rangumudri','M',NULL),
 (513,'2003-07-11','hema',NULL,'F','2020-11-27'),
 (514,'2004-01-13','pravalika','athili','F','2021-12-21'),
 (511,NULL,'haritha','akireddy','F','2020-06-02');
 
  select * from employeeinfo;
  -- data updation
  update 
  employeeinfo 
  set
  first_name = null
  where emp_no = 511;
  
  select * from employeeinfo;
  
  select * from 
  employeeinfo
  order by
  hire_date;
  
    select * from employeeinfo;
    
select * from 
  employeeinfo
order by
  hire_date DESC;
  
  SELECT * from
  employeeinfo
  where first_name is null;
  
    SELECT * from
  employeeinfo
  where hire_date is not null;
  
  update employeeinfo
  set first_name = 'hari'
  where emp_no = 511;
  
  select emp_no, birth_date,
  IFNULL(first_name, 'NA')
  from employeeinfo;
  
   select emp_no, birth_date,first_name,
  IFNULL(last_name, 'NA')
  from employeeinfo;
  
  use employees;
  select * from salaries where emp_no = 100001;
  
  select count(*) from salaries;
  
  select sum(salary) from salaries;
  
   select count(*) from salaries where emp_no = 100001;
  
  select sum(salary) from salaries where emp_no = 100001;