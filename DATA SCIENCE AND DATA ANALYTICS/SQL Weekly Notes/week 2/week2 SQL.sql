use employees;
select * from employees;
CREATE DATABASE employees2;
DROP DATABASE employees2;
CREATE DATABASE employees2;
USE employees2;
CREATE TABLE employees2 (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);
DROP TABLE employees2; 

INSERT INTO employees2 (emp_no, hire_date, last_name, first_name, gender, birth_date) VALUES
(7878789,'1953-03-02','Georgis','Facello','M','1986-06-26');

SELECT * FROM employees2;

INSERT INTO employees2 (emp_no) VALUES
(787877);

CREATE TABLE testing (
first_name VARCHAR(15),
last_name VARCHAR(15));

INSERT INTO testing (first_name) VALUES
('pravali');
INSERT INTO testing VALUES
('pravalika','rangumudri');

SELECT * FROM testing;
INSERT INTO employees2 VALUES
(7878763,'1999-12-21','Vinay','Rangumudri','M','2022-06-26'),
(7878764,'2004-01-13','Pravalika','Rangumudri','F','2025-06-26'),
(7878765,'2001-09-06','hema','p','F','2025-06-26'),
(7878766,'2001-09-11','hari','A','F','2025-06-26');

SELECT * FROM employees2;

UPDATE employees2 SET first_name = 'pravinay' WHERE emp_no = 7878763;
SELECT * FROM employees2;