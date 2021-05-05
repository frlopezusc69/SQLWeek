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

-- Question 6 What film had the most actors in it?

-- Question 7 Which actor has been in the least movies?

-- Question 8 How many districts have more than 5 customers in it?
