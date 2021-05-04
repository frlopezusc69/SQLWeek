-- Question 1
Select last_name
From actor
Where last_name = 'Wahlberg';

-- Question 2
Select customer_id, amount
From payment
Where amount between $3.99 and $5.99;

--Question 3
Select *
From film
Where rental_duration >= 3;

-- Question 4
Select last_name
From customer
where last_name = 'William';

-- Question 5
Select staff_id
From payment
Having COUNT(staff_id) > 0; 

-- Question 6
Select district 
From address
Group by(Count(*));

-- Question 7
Select actor_id
From film_actor
Order by Count(film_actor), ASC;

-- Question 8
SELECT last_name
From customer, store_id(1)
Where last_name = '%es';

-- Question 9
Select payment 
From customer
Group by customer_id, ASC
Having > 250

-- Question 10
Select rating
From film
Group by count(rating), ASC;