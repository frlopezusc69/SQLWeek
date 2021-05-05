-- Create Customer Table
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    address VARCHAR(100),
    birthdate DATE
);

SELECT * FROM customer;

-- CREATE Ticket TABLE 
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY Key,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY customer_id REFERENCES customer(customer_id),
    ticket_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now())
);

SELECT * FROM ticket;

-- CREATE INVENTORY TABLE TABLE
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    film_id INTEGER NOT NULL,
    FOREIGN KEY film_id REFERENCES film(film_id),
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY ticket_id REFERENCES tickets(ticket_id),
    concession_id INTEGER NOT NULL,
    FOREIGN KEY concession_id REFERENCES concession(concession_id),
);

SELECT * FROM inventory;

-- CREATE THEATER TABLE
CREATE TABLE theater(
    theater_id SERIAL PRIMARY KEY,
    theater_loc VARCHAR(50),
    contact_number VARCHAR(30),
    address VARCHAR(100)
);

SELECT * FROM theater;

-- CREATE FILM TABLE
CREATE TABLE film(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(100),
    description VARCHAR(300),
    film_type VARCHAR(20),
    rating VARCHAR(20),
    amount NUMERIC(2,2),
    FOREIGN KEY film_id REFERENCES film(film_id),
);

SELECT * FROM film;

-- CREATE CONCESSION TABLE
CREATE TABLE concessions(
    concession_id SERIAL PRIMARY Key,
    food_type VARCHAR(20),
    drink_type VARCHAR(20),
    misc VARCHAR(20),
);

SELECT * FROM concessions

---------------- -- INSERTING DATA INTO TABLES -- ----------------

-- Add data to our customer tables
ALTER TABLe customer
Insert INTO customer(
    'first_name',
    'last_name',
    'email',
    'address',
    'username',
    'birthdate'
)VALUES(
    'Felix',
    'Lopez',
    'felixlop@usc.edu',
    '4415 Pacific Coast Highway, Torrance, CA 90505',
    'felixtries'
    '1992-04-20' --yes, my birthday is on 4/20--
);

Insert into concessions(
    'food_type',
    'drink_type',
    'misc',
)VALUES(
    'Popcorn',
    'Dr. Pepper',
    'Whoppers'
);

Insert into film(
    'film_name',
    'description'
    'film_type'
    'rating',
)VALUES(
    'Spaceballs: The Movie',
    'This is the movie with perhaps the longest intro anyone will ever see. Despite it's low rating, this movie is not suitable for children.',
    'Comedy',
    'PG',
);
