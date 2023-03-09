use employees2;
ALTER TABLE employees MODIFY first_name VARCHAR(60);
UPDATE employees SET first_name = ' This is testing' WHERE emp_no = 10001;
SELECT * from employees;

UPDATE employees SET first_name = ' This is testing, testing and testing' WHERE emp_no = 10001;
SELECT * from employees;

UPDATE employees SET first_name = ' This can''t be testing' WHERE emp_no = 10001;
SELECT * from employees;

UPDATE employees SET first_name = ' This can''t be testing' WHERE emp_no = 10001;
SELECT * from employees;

SELECT first_name, LENGTH(first_name) FROM employees WHERE emp_no = 10002;

SELECT first_name, LENGTH(first_name) FROM employees;

SELECT first_name, LOWER(first_name) FROM employees WHERE emp_no = 10002;

SELECT first_name, LOWER(first_name) FROM employees;

SELECT first_name, UPPER(first_name) FROM employees WHERE emp_no = 10002;

SELECT first_name, UPPER(first_name) FROM employees;

SELECT CHAR(81, 82, 83, 84, 85, 99);

SELECT CHAR(77);

SELECT first_name, CONCAT(first_name," ",'Then What') FROM employees WHERE emp_no = 10001;

SELECT first_name, CONCAT_WS(',',first_name,'Then What') FROM employees WHERE emp_no= 10001;

SELECT first_name, ASCII(first_name), ASCII('S') FROM employees WHERE emp_no= 10008;

SELECT first_name, LENGTH(first_name), BIT_LENGTH(first_name) FROM employees WHERE emp_no = 10001;

SELECT FIELD("RAM", 'SHAM, SITA', 'GITA', "RAM");

SELECT ELT (4, 'SHAM', 'SITA', 'GITA', 'RAM');

SELECT FIND_IN_SET ('Parto', 'Parto, Carto, jarto');

SELECT FORMAT(52338.923456, 3);

SELECT FORMAT(52338.923456, 0);

SELECT HEX('Date');

SELECT UNHEX(44617461);

SELECT INSERT('Experimental', 4, 3,'zzzzzz');

SELECT INSERT ('Experimental', 4, 20,'zzzzzz');

SELECT LOCATE('shakti','mahashaktishakti');

SELECT INSTR("shakti","mahashaktishakti");

SELECT INSTR("mahashaktishakti","shakti");

SELECT LEFT('mahashaktishakti', 5);

SELECT LPAD ('mahashaktishakti', 25, 'Why');

SELECT LTRIM ('    mahashaktishakti');

SELECT RTRIM ('mahashaktishakti    ');

SELECT SPACE(3);

SELECT SUBSTRING('Datascience',5,2);

SELECT SUBSTRING('Datascience',-6.4);

SELECT REPLACE('Datascience','scr','socialsci');

SELECT RIGHT ('mahashaktishakti', 5);

SELECT REVERSE('Datascience');

SELECT RPAD('mahashaktishakti', 25,'Why');

SELECT TRIM ('  mahashaktishakti ');

SELECT TRIM(LEADING 'ma' FROM 'mahashaktishakti');

SELECT TRIM(TRAILING 'ti' FROM 'mahashaktishakti');

SELECT TRIM(BOTH 'i' FROM 'mahashaktishakti');

SELECT REPEAT('Datascience',2);