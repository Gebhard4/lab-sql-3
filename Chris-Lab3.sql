use sakila;

select distinct(count(last_name)) from actor;

select count(language_id) from film;

select count(rating) from film
where rating = "PG-13";

select title, length, release_year from film
where release_year = "2006"
order by length desc
limit 10;


select rental_date from rental 
order by rental_date desc;
select datediff('2006-02-14', '2005-05-24');

select *, substring(rental_date, 3, 2) as month, dayname(rental_date) as weekday 
from rental
limit 20;

select *, 
case
	when (dayname(rental_date) = "Saturday") then "weekend"
	else "workday"
    end as day_type
from rental;

select * from rental
order by rental_date desc;

select rental_id, date_format(rental_date,"%Y-%m-%d") as date_2, datediff("2006-02-14",date_format(rental_date,"%Y-%m-%d")) as date_3
from rental
where datediff("2006-02-14", date_format(rental_date,"%Y-%m-%d")) < 30;