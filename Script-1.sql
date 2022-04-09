-- 1. How many actors are there with the last name 'Wahlberg'?
select first_name, last_name
from actor 
where last_name 
like 'Wahlberg';
-- Answer - 2

-- 2. How many payments were made between $3.99 and $5.99?
select amount
from payment
where amount BETWEEN 3.99 and 5.99
order by amount desc;
-- Answer - 5561

-- 3. What film does the store have the most of?
select film_id, count(film_id)
from inventory
group by film_id  
order by count desc;
-- Answer film_id 200 count 9

-- 4. How many customers have the last name 'William'?
select first_name, last_name
from customer
where last_name 
like 'William';
-- Answer - 0

-- 5. What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id)
from rental
group by staff_id
order by count desc;
--Answer - 1 - 8040

-- 6. How many different district names are there?
select district, count(district)
from address
group by district 
order by count desc;
-- Answer - 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(actor_id)
from film_actor
group by film_id
order by count DESC;
-- Answer film_id 508 count 16

-- 8. From store_id 1, how many customers have a last name ending with 'es'?(use customer table)
select store_id, count(last_name) 
from customer
where last_name 
like '%es'
group by store_id 
order by count desc;
--Answer 13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select amount, count(amount)
from payment 
where customer_id between 380 and 430
group by amount
having count(amount) > 250
order by amount desc;
-- Answer - 3: 4.99 - 281, 2.99 - 290, 0.99 - 269

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, count(title)
from film
group by rating 
order by count desc;
-- Answer - 5 categories. PG-13 has the most at 223 counts.