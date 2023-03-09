-- 1. Install Python, Anaconda and MySQL Connector
-- solved in jupyternotebook (Installed)

-- 2. Connect with schema sakila through python MySQL Connector
-- solved in jupyternotebook (connected)

-- 3. Run describe command for table language and rental through python code
-- solved in jupyternotebook

-- 4. Write code to display result set from three tables store, inventory and film_text using inner join through python.
use sakila;
select s.store_id,s.manager_staff_id,s.address_id,i.inventory_id,f.film_id,f.title
                    from store s inner join inventory i on s.store_id=i.store_id
                    inner join film_text f on i.film_id=f.film_id
                    order by f.title;