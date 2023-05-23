use sakila;

-- 1. How many distinct (different) actors' last names are there? > 121
select count(distinct(last_name)) from actor;



-- 2. In how many different languages where the films originally produced? (Use the column language_id from the film table) > 1

select count(distinct(language_id)) from film;





-- 3. How many movies were released with "PG-13" rating? > 223
select count(*) from film 
where rating = "PG-13";



-- 4. Get 10 the longest movies from 2006.

select * from film
where release_year = 2006
order by length desc
limit 10;



-- 5. How many days has been the company operating (check DATEDIFF() function)? > ????? Could not find the correct table.
select * from film_category;



-- 6. Show rental info with additional columns month and weekday. Get 20.
select *, month(rental_date) as reuturn_month, day(return_date) as return_weekday from rental;




-- 7. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

select 
*,
case 
	when dayofweek(rental_date) = 1 then 'weekend'
    when dayofweek(rental_date) = 2 then 'workday'
    when dayofweek(rental_date) = 3 then 'workday'
    when dayofweek(rental_date) = 4 then 'workday'
    when dayofweek(rental_date) = 5 then 'workday'
    when dayofweek(rental_date) = 6 then 'workday'
    when dayofweek(rental_date) = 7 then 'weekend'
else 'unknown' end as day_type
from rental;



-- 8. How many rentals were in the last month of activity? > 0
select count(*) from rental
where year(rental_date) = 2006 and month(rental_date) = 1;


