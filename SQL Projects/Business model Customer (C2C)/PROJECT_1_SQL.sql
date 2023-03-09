/* Business model Customer to Customer (C2C) allows customers to do business with each other. 
This model is growing fast with e-commerce platforms where sellers may be required to pay some amount and 
buyer can buy it without paying anything. E-Commerce website brings the seller and buyer to the same platform. 

Analyzing the user's database will lead to understanding the business perspective. 
Behaviour of the users can be traced in terms of business with exploration of the user’s database. 

Dataset: One .csv file with name users_data with 98913 rows and 27 columns

Tasks to be performed */

-- 1.Q Create new schema as ecommerce
create database ecommerce;
use ecommerce;
-- refer to attach the (Q.1.png)

-- 2.Q Import .csv file users_data into MySQL
use ecommerce;
select count(*) from users_data;
/* (right click on ecommerce schema 
-> Table Data import Wizard 
-> Give path of the file 
-> Next 
-> choose options : Create a new table , select delete if exist -> next -> next) */ 
-- refer to attach the (Q.2.png)

-- 3.Q Run SQL command to see the structure of table
desc users_data;
-- refer to attach the (Q.3.png)

-- 4.Q Run SQL command to select first 100 rows of the database
select * from users_data limit 100;
-- refer to attach the (Q.4.png)

-- 5.Q How many distinct values exist in table for field country and language
select count(distinct country) country, count(distinct language) language from users_data;
-- refer to attach the (Q.5.png)

-- 6.Q Check whether male users are having maximum followers or female users.
 select gender,sum(socialNBFollowers) from users_data group by gender;
-- refer to attach the (Q.6.png)

-- 7.Q Calculate the total users those
-- 7.a. Uses Profile Picture in their Profile
select count(hasProfilePicture) Users_with_ProfilePicture from users_data where hasProfilePicture = 'True';
-- refer to attach the (Q.7.A.png)

-- 7.b. Uses Application for Ecommerce platform
select count(hasAnyApp) Users_with_Anyapp from users_data where hasAnyApp = 'True';
-- refer to attach the (Q.7.B.png)

-- 7.c. Uses Android app
select count(hasAndroidApp) Users_with_Androidapp from users_data where hasAndroidApp = 'True';
-- refer to attach the (Q.7.C.png)

-- 7.d. Uses ios app
select count(hasIosApp) Users_with_Iosdapp from users_data where hasIosApp = 'True';
-- refer to attach the (Q.7.D.png)

/* 8.Q Calculate the total number of buyers for each country and sort the result in descending order of total number of buyers. 
(Hint: consider only those users having at least 1 product bought.) */
select country,count(productsBought) Buyers from users_data group by country order by Buyers desc;
-- refer to attach the (Q.8.png)

/* 9.Q Calculate the total number of sellers for each country and sort the result in ascending order of total number of sellers.
 (Hint: consider only those users having at least 1 product sold.) */
 select country,count(productsSold) Sellers from users_data group by country order by Sellers asc;
-- refer to attach the (Q.9.png)

-- 10.Q Display name of top 10 countries having maximum products pass rate.
select country from users_data group by country having max(productsPassRate) limit 10;
-- refer to attach the (Q.10.png)

-- 11.Q Calculate the number of users on an ecommerce platform for different language choices.
select language,count(language) from users_data group by language;
-- refer to attach the (Q.11.png)

/* 12.Q Check the choice of female users about putting the product in a wishlist or to like socially on an ecommerce platform. 
(Hint: use UNION to answer this question.) */
select sum(productsWished) ,sum(socialProductsLiked) from users_data where gender='F';
-- choice of ehr female users about putting the product in a wishlist or to like socially om an ecommerce platform is same. 
-- refer to attach the (Q.12.png)

-- 13.Q Check the choice of male users about being seller or buyer. (Hint: use UNION to solve this question.)
select count(productsSold),count(productsBought) from users_data where gender='M';
-- choicr of male users about being seller or buyer is same.
-- refer to attach the (Q.13.png)

-- 14.Q Which country is having maximum number of buyers?
select country,max(productsBought) Max_no_of_buyers from users_data group by country order by max(productsBought) desc limit 1;
-- Belfique country is having maximum number of buyers.
-- refer to attach the (Q.14.png)

-- 15.Q List the name of 10 countries having zero number of sellers.
select country , productsSold from users_data where productsSold=0 limit 10;
-- refer to attach the (Q.15.png)

-- 16.Q Display record of top 110 users who have used ecommerce platform recently.
select * from users_data group by daysSinceLastLogin having min(daysSinceLastLogin) order by daysSinceLastLogin asc limit 110;
-- refer to attach the (Q.16.png)

-- 17.Q Calculate the number of female users those who have not logged in since last 100 days.
select count(type) from users_data where gender='F' and daysSinceLastLogin >= 100;
-- refer to attach the (Q.17.png)

-- 18.Q Display the number of female users of each country at ecommerce platform.
select country,count(gender) Female_users from users_data where gender='F' group by country;
-- refer to attach the (Q.18.png)

-- 19.Q Display the number of male users of each country at ecommerce platform.
select country,count(gender) Male_users from users_data where gender='M' group by country;
-- refer to attach the (Q.19.png)

-- 20.Q Calculate the average number of products sold and bought on ecommerce platform by male users for each country.
select country,avg(productsSold) Products_sold,avg(productsBought) Products_bought from users_data where gender='M' group by country;
-- refer to attach the (Q.20.png)