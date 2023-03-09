-- 1. Create new schema as alumni
CREATE SCHEMA alumni;

# ============================================================================================================================

-- 2. Import all .csv files into MySQL

-- All cvs files are imported to the database name as alumini
-- College_A_HS ~ Higher Studies Record of College A
-- College_A_SE ~ Self Employed Record of College A
-- College_A_SJ ~ Service/Job Record of College A
-- College_B_HS ~ Higher Studies Record of College B
-- College_B_SE ~ Higher Studies Record of College B
-- College_B_SJ ~ Higher Studies Record of College B

# ============================================================================================================================

-- 3. Run SQL command to see the structure of six tables

USE alumni;

DESC college_a_hs;
DESC college_a_se;
DESC college_a_sj;
DESC college_b_hs;
DESC college_b_se;
DESC college_b_sj;

# ==============================================================================================================================

/* 4. Display first 1000 rows of tables 
(College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python. */
/*
import mysql.connector
testdb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1321",
    database="Alumni")
testcursor = testdb.cursor()
testcursor.execute("SELECT * FROM College_A_HS LIMIT 1000")
a = testcursor.fetchall()
for b in a:
    print(b)
testcursor.execute("SELECT * FROM College_A_SE LIMIT 1000")
a = testcursor.fetchall()
for b in a:
    print(b)
testcursor.execute("SELECT * FROM College_A_SJ LIMIT 1000")
a = testcursor.fetchall()
for b in a:
    print(b)
testcursor.execute("SELECT * FROM College_B_HS LIMIT 1000")
a = testcursor.fetchall()
for b in a:
    print(b)
testcursor.execute("SELECT * FROM College_B_SE LIMIT 1000")
a = testcursor.fetchall()
for b in a:
    print(b)
testcursor.execute("SELECT * FROM College_B_SJ LIMIT 1000")
a = testcursor.fetchall()
for b in a:
    print(b)

-- attach the project2.notebook */

# ================================================================================================================================

-- 5.Import first 1500 rows of tables 
-- (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel.

-- open ms excel and click on data 
-- 1.click on mysql for excel
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_hs
-- 3.click on import mysql data of
-- (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel. and 
-- then window will appear in that select advanced options and 
-- set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- referce to attach the file in jpg images 5A1, 5A2, 5A3, 5B1, 5B2, 5B3
-- attach excel Q.5.IMPORT ROWS

SELECT COUNT(*) FROM college_a_hs;
SELECT COUNT(*) FROM college_a_se;
SELECT COUNT(*) FROM college_a_sj;
SELECT COUNT(*) FROM college_b_hs;
SELECT COUNT(*) FROM college_b_se;
SELECT COUNT(*) FROM college_b_sj;

# =========================================================================================================================

-- 6. Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values.

SELECT count(*) FROM college_a_hs;

CREATE VIEW college_a_hs_v AS
    SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND HSDegree IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;

SELECT * FROM college_a_hs_v;

# =========================================================================================================================

/*
7.Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
*/

SELECT * FROM college_a_se;

SELECT COUNT(*) FROM college_a_se;

CREATE VIEW college_a_se_v AS
    SELECT 
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;
            
	SELECT * FROM college_a_se_v;

#=========================================================================================================================

/*
8. Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
*/

SELECT * FROM college_a_sj;

CREATE VIEW college_a_sj_v AS
    SELECT 
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
	SELECT * FROM college_a_sj_v;
    
#=========================================================================================================================
    
/*
9. Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
*/

SELECT * FROM college_b_hs;

SELECT COUNT(*) FROM college_b_hs;

CREATE VIEW college_b_hs_v AS
    SELECT 
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
             AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND HSDegree IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
            
SELECT * FROM college_b_hs_v;

#=========================================================================================================================

/*
10. Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
*/


SELECT COUNT(*) FROM college_b_se;

SELECT * FROM college_b_se;

CREATE VIEW college_b_se_v AS
    SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
             AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;
            
SELECT * FROM college_b_se_v;

#=========================================================================================================================

/*
11. Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values.
*/

SELECT COUNT(*) FROM college_b_sj;

SELECT * FROM college_b_sj;

CREATE VIEW college_b_sj_v AS
    SELECT 
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
             AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
             AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
SELECT * FROM college_b_sj_v;

#=========================================================================================================================
/*
12. Make procedure to use string function/s for converting record of Name, 
FatherName, MotherName into lower case for views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, 
College_B_SE_V, College_B_SJ_V) 
*/


-- College_A_HS_V

DELIMITER $$
USE `alumni`$$
CREATE PROCEDURE `view1` ()
BEGIN
select lower(Name) Name, lower(FatherName) FatherName,lower(MotherName) MotherName from COLLEGE_A_HS_V;
END$$
DELIMITER ;

call view1();

-- --------------------------------------------------------------------------------------------------------------------
-- College_A_SE_V:

USE `alumni`;
DROP procedure IF EXISTS `view2`;

DELIMITER $$
USE `alumni`$$
CREATE PROCEDURE `view2` ()
BEGIN
select lower(Name) Name, lower(FatherName) FatherName,lower(MotherName) MotherName from COLLEGE_A_SE_V;
END$$

DELIMITER ;

call view2();

-- --------------------------------------------------------------------------------------------------------------------------
-- College_A_SJ_V:

USE `alumni`;
DROP procedure IF EXISTS `view3`;

DELIMITER $$
USE `alumni`$$
CREATE PROCEDURE `view3` ()
BEGIN
select lower(Name) Name, lower(FatherName) FatherName,lower(MotherName) MotherName from COLLEGE_A_SJ_V;
END$$

DELIMITER ;

call view3();

-- -----------------------------------------------------------------------------------------------------------------------------
-- College_B_HS_V:

USE `alumni`;
DROP procedure IF EXISTS `view4`;

DELIMITER $$
USE `alumni`$$
CREATE PROCEDURE `view4` ()
BEGIN
select lower(Name) Name, lower(FatherName) FatherName,lower(MotherName) MotherName from COLLEGE_B_HS_V;
END$$

DELIMITER ;

call view4();

-- -------------------------------------------------------------------------------------------------------------------------------
-- College_B_SE_V:

USE `alumni`;
DROP procedure IF EXISTS `view5`;

DELIMITER $$
USE `alumni`$$
CREATE PROCEDURE `view5` ()
BEGIN
select lower(Name) Name, lower(FatherName) FatherName,lower(MotherName) MotherName from COLLEGE_B_SE_V;
END$$

DELIMITER ;

call view5();
-- -----------------------------------------------------------------------------------------------------------------------------
-- College_B_SJ_V:

USE `alumni`;
DROP procedure IF EXISTS `view6`;

DELIMITER $$
USE `alumni`$$
CREATE PROCEDURE `view6` ()
BEGIN
select lower(Name) Name, lower(FatherName) FatherName,lower(MotherName) MotherName from COLLEGE_B_SJ_V;
END$$

DELIMITER ;

call view6();
# =========================================================================================================================

/*
13. Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
into MS Excel and make pivot chart for location of Alumni. 
*/

-- Attach the excel sheet & JPG images chart1, chart2, chart3, chart4, chart5, chart6

# =========================================================================================================================

/*
14. Write a query to create procedure get_name_collegeA using the cursor to 
fetch names of all students from college A.
*/

SELECT * FROM college_a_hs;

delimiter $$
create  procedure get_name_collegeA(inout n text(20000))
begin
	declare finished int default 0;
    declare namelist varchar(400) default '';
    
    declare namedetails cursor for
		select Name from College_A_HS
		union
		select Name from College_A_SE
		union
		select Name from College_A_SJ;
        
        
	declare continue handler for not found set finished = 1;
    
    open namedetails;
    getname:
    loop
		fetch namedetails into namelist;
        if finished = 1 then 
			leave getname;
		end if;
        
        set n = concat(namelist,';',n);
	end loop getname;
    close namedetails;
end$$
delimiter ;

set @l=' ';
call get_name_collegeA(@l);
select @l student_names_get_name_collegeA;

SELECT COUNT(Name) FROM college_a_hs;
SELECT COUNT(Name) FROM college_a_se;
SELECT COUNT(Name) FROM college_a_sj;

# =========================================================================================================================

/*
15. Write a query to create procedure get_name_collegeB 
using the cursor to fetch names of all students from college B.
*/

delimiter $$
create  procedure get_name_collegeB(inout n text(20000))
begin
	declare finished int default 0;
    declare namelist varchar(400) default '';
    
    declare namedetails cursor for
		select Name from College_B_HS
		union
		select Name from College_B_SE
		union
		select Name from College_B_SJ;
        
        
    declare continue handler for not found set finished =1;
    
    open namedetails;
    getname:
    loop
		fetch namedetails into namelist;
        if finished = 1 then 
			leave getname;
		end if;
        
        set n = concat(namelist,';',n);
	end loop getname;
    close namedetails;
end$$
delimiter ;

set @l=' ';
call get_name_collegeB(@l);
select @l student_names_get_name_collegeB;


SELECT COUNT(Name) FROM college_b_hs;
SELECT COUNT(Name) FROM college_b_se;
SELECT COUNT(Name) FROM college_b_sj;

# =========================================================================================================================

/*
16. Calculate the percentage of career choice of College A and College B Alumni
-- (w.r.t Higher Studies, Self Employed and Service/Job)
Note: Approximate percentages are considered for career choices.
*/


SELECT COUNT(*) FROM college_a_hs;
SELECT COUNT(*) FROM college_a_se;
SELECT COUNT(*) FROM college_a_sj;

SELECT((SELECT COUNT(*) FROM college_a_hs)+(SELECT COUNT(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj)) TOTALA;
-- 5887
-- -----------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) FROM college_b_hs;
SELECT COUNT(*) FROM college_b_se;
SELECT COUNT(*) FROM college_b_sj;

SELECT((SELECT COUNT(*) FROM college_b_hs)+(SELECT COUNT(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj)) TOTALB;
-- 2259
-- -------------------------------------------------------------------------------------------------------------------

SELECT 'Higher Studies',(SELECT COUNT(*) / 5887 * 100 FROM college_a_hs)'College A Percentage',
(SELECT COUNT(*) / 2259 * 100 Percentage FROM college_b_hs) 'College B Percentage'
UNION
SELECT 'Self Employed',(SELECT COUNT(*) / 5887 * 100 FROM college_a_se)'College A Percentage',
(SELECT COUNT(*) / 2259 * 100 Percentage FROM college_b_se) 'College B Percentage'
UNION
SELECT 'Service Job',(SELECT COUNT(*) / 5887 * 100 FROM college_a_sj)'College A Percentage',
(SELECT COUNT(*) / 2259 * 100 Percentage FROM college_b_sj) 'College B Percentage';

