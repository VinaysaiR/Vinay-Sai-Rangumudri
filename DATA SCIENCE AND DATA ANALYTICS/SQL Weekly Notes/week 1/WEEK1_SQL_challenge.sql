1.Q Write type of attributes
--Ans
--Key Attribute – Attribute to uniquely identify Entity
--Simple Attribute – No further division is possible
--Composite Attribute – More than one simple attributes make composite attribute
--Derived Attribute – Values for derived attribute is achieved by other attribute
--Single Value Attribute – Single Value
--Multi Value Attribute – Multiple values for same attribute

2.Q	ACID stands for?
--Ans
--ACID (Acronym for Atomicity, Consistency, Isolation, Durability)
--1.Atomicty: Either all instructions in th transacitons will take place or none of them will..
--2.Consitency: Initial state of database is consistent,Database should be in consistent state befor and after each transactions.
--3.Isolation:Simultaneous transaction should be executed as independent transactions,Existence of any transactions remains unaffected by other.
--4.Durability:Changes occurred with commit in database should remain unaffected with the hardware or the software failure.

3.Q Write three examples of data definition language commands.
Ans
--Create - (Table Creation)
--Alter - (Modifying the structure of Table)
--Drop - (Dropping Table)

4.Q Write examples of transaction control language commands.
Ans
--Commit - (Saving all transactions after last commit)
--Rollback - (Undoing transactions that are not committed)
--Savepoint - (Used to roll back the transaction to a particular point)

5.Q Write name of default tables of sakila schema of MySQL.
Ans
--Default tables in sakila database are 16 tables , list is as below,
         ===> actor,address,category,city,country,customer,film,film_actor,
              film_category,film_text,inventory,language,payment,rental,staff and
              store.
--Please refer these 2 attachment(Q.5 default table(main) and default table)

6.Q Explore EER diagram of schema sakila.
--Ans:
--File attached (Q.6 EER diagram of schema sakila)

7.Q Look for foreign keys used in the table category (Navigator).
--Ans:
--There is no foreign keys used in the table category

8.Q Look for indexes used in table film_actor (Navigator).
--Ans: 
--PRIMARY and idx_fk_film_id are the indexes used in table film_actor.
--Please refer attachment(Q.8 indexes(film_actor))

9.Q Look for stored procedures used in the sakila database (Navigator).
--Ans:
--film_in_stock,
--film_not_in_stock,
--rewards_report are the procedures used in the sakila database.
--Please refer attachment(Q.9 Stored Procedures)

10.Q Look for views used in the sakila database (Navigator).
--Ans:
--actor_info,
--customer_list,
--film_list,
--nicer_but_slower_film_list,
--sales_by_film_category,
--sales_by_store,
--staff_list are the views used in the sakila database.
--Please refer attachment(Q.10 views)

11.Q Write keyboard shortcut for executing all statements in MySQL.
--Ans
--Executing all statements - Ctrl + Shift + Enter

12.Q Write keyboard shortcut for opening new tab in MySQL.
--Ans:
--Opening New Tab - Ctrl + T

13.Q Explore all the schemas through navigator in MySQL.
--Ans:
--In navigator tab there are two tabs available as Administrartion and Schemas.
--In the Schemas tab , U just view the all schemas list in MYSQL.
--Please refer attachment(Q.13 explore schema)

14.Q Create new schema in connected server in MySQL.
--Ans:
--Right click to the Navigatore in schema tab, click create schema as your name/wish and click Apply.
--Use CREATE command used to load a new schema/Database.
--The double cylinder symbol in the bar above the Navigator, click to Create new schema in connected server and click Apply.
--Please refer attachment(Q.14 new_schema and new_schema1) 

15.Q Create new SQL tab in MySQL for running queries and save the file.
--Ans:
--Create new SQL tab in MySQL for running queries --- > Ctrl + T
--Save a File ---> Ctrl + S