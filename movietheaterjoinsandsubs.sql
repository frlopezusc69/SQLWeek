-- Question 1 List all customers who live in Texas 

Select customer.first_name, customer.last_name, customer.email,
From customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
Select Count(*) from customer group by district
Where district = 'Texas';

-- Question 2 Get all payments above $6.99 with the Customer's full name

SELECT customer_id
FROM payment 
Group by customer_id
Having SUM(amount) >= 6.99

SELECT first_name, last_name
From customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment 
    Group by customer_id
    Having SUM(amount) >= 6.99
)

Group by store_id, first_name, last_name;

-- Question 3 Show all customer names who have made payments over $175 (use subqueries)

SELECT customer_id
FROM payment 
Group by customer_id
Having SUM(amount) > $175

SELECT first_name, last_name
From customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment 
    Group by customer_id
    Having SUM(amount) >= $175
)

Group by store_id, first_name, last_name;

-- Question 4 List all customers that live in Nepal

Select customer.first_name, customer.last_name, customer.email, country
From customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

-- Question 5 Which staff member had the most transactions?

SELECT staff_id
FROM payment 
Group by staff_id
Having Count(*) > 2

SELECT first_name, last_name
From staff
WHERE staff_id IN (
    SELECT staff_id
    FROM payment 
    Group by staff_id
    Having Count(*) > 2
)

Group by staff_id, first_name, last_name;

-- Question 6 What film had the most actors in it?

Select first_name, last_name, Count(*)
From actor
Join film_actor
On actor.actor_id = film_actor.actor_id
Where film_actor.actor_id IN (
    Select film_id
    From film
    where Count(*) > 2 ASC
)
Group by actor.actor_id, first_name, last_name
Order by actor.actor_id;

-- Question 7 Which actor has been in the least movies?

Select first_name, last_name, Count(*)
From actor
Join film_actor
On actor.actor_id = film_actor.actor_id
Where film_actor.actor_id IN (
    Select film_id
    From film
    where Count(*) < 2 ASC
)
Group by actor.actor_id, first_name, last_name
Order by actor.actor_id;

-- Question 8 How many districts have more than 5 customers in it?

Select customer.first_name, customer.last_name, customer.email,
From customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
Select Count(*) from customer group by district
Where count(*) > 5