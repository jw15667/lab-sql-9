use sakila;
-- Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE `rentals_may` LIKE `rental`;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
insert into rentals_may select * from rental
where DATE_FORMAT(rental_date, "%M")='May';

-- Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE `rentals_june` LIKE `rental`;

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
insert into rentals_june select * from rental
where DATE_FORMAT(rental_date, "%M")='June';

-- Check the number of rentals for each customer for May.
SELECT count(distinct(rental_id)) as rentals_per_customer from rentals_may;

-- Check the number of rentals for each customer for June.
SELECT count(distinct(rental_id)) as rentals_per_customer from rentals_june;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

-- Check the number of rentals for each customer for May

-- Check the number of rentals for each customer for June

-- Hint: You can store the results from the two queries in two separate dataframes.

-- Write a function that checks if customer borrowed more or less books in the month of June as compared to May.

-- Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the merge function.


