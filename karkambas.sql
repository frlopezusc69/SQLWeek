Create table Customer(
    customer_id SERIAL PRIMARY KEY
    first_name varchar(30)
    last_name VARCHAR(50)
    address_id VARCHAR(100)
    email VARCHAR(50)
    phone_number VARCHAR(15)
);

SELECT * from Customer;

CREATE Table Service_(
    service_id SERIAL PRIMARY KEY
    date_ DATE
    mechanic_id INTEGER NOT NULL Foreign Key (Mechanic)
    description_ VARCHAR(255)
    amount NUMERIC(7,2)
);

SELECT * from Service_

CREATE TABLE Invoice(
    invoice_id SERIAL PRIMARY KEY
    date TIMESTAMP NOT NULL
    VIN VARCHAR(20) FOREIGN KEY (CAR)
    total_amount NUMRERIC(8.2)
    part_id INTEGER FOREIGN KEY (PART)
    service_id INTEGER FOREIGN KEY (Service_)
    salesperson_id INTEGER NOT NULL FOREIGN KEY (Salesperson)
    mechanic_id INTEGER FOREIGN KEY (Mechanic)
    customer_id Integer NOT NULL FOREIGN KEY (Customer)
);

Select * From Invoice;

CREATE TABLE Vendor(
    vendor_id SERIAL PRIMARY KEY
    vendor_name VARCHAR(30)
    phone_number VARCHAR(15)
    address_id VARCHAR(100)
);

Select * From Vendor;

CREATE Table Part(
    part_id SERIAL PRIMARY KEY
    part_name VARCHAR(50)
    part_description VARCHAR(255)
    amount NUMERIC(7,2)
    vendor_id INTEGER NOT NULL FOREIGN KEY (Vendor)
    SKU VARCHAR(20)
);

Select * From Part

CREATE TABLE Salesperson(
    salesperson_id SERIAL PRIMARY KEY
    first_name VARCHAR(30)
    last_name VARCHAR(50)
);

CREATE TABLE Mechanic(
    mechanic_id SERIAL PRIMARY KEY
    first_name VARCHAR(30)
    last_name VARCHAR(50)
);

Select * from Mechanic

CREATE TABLE CAR(
    VIN VARCHAR(20) NOT NULL PRIMARY KEY,
    vendor_id INTEGER NOT NULL FOREIGN KEY (Vendor),
    model VARCHAR(50),
    year VARCHAR(4),
    color VARCHAR(15),
    amount NUMERIC(8,2)
)

SELECT * from CAR

--- Inserting Data into Tables ---

Alter TABLE customer

INSERT INTO customer(
    'first_name',
    'last_name', 
    'address_id',
    'email',
    'phone_number',
)VALUES(
    'Felix',
    'Lopez',
    '4415 Pacific Coast Highway, Torrance, CA 90505',
    'felixlop@usc.edu',
    '7143974136',
);
(
    'Liz',
    'Hernandez',
    '2636 South Garth Ave Apt 9, Los Angeles, CA 90210',
    'elizabethherdinand@gmail.com',
    '3103887193',
);
(
    'Richard',
    'Lopez',
    '9016 Dartmouth Way, Buena Park, CA 90620',
    'waisodim@gmail.com',
    '7142887861',
);
(
    'Juan',
    'Cuarenta',
    '3344 South Gardena Avenue, Carson, CA 90750',
    'jcuarenta@demandforce.com',
    '5622224455',
);

Alter Table Service_

INSERT INTO Service_(
    'service_id',
    'date',
    'mechanic_id',
    'description_',
    'amount', 
)VALUES(
    '1', -- Oil Change -- 
    '2/22/2020',
    '1', -- Randy Handy --
    'Standard Oil Change for most cars ',
    '$45.00',
);
(
    '2', --Full Synthetic Oil Change --
    '2/22/2020',
    '2', -- Mandy Dandy --
    'Full Synthetic Oil Change for cars',
    '$65.00',
);
(
    '3', -- Air Filter change -- 
    '2/22/2020',
    '3', --Hanky Panky --
    'Air filter change for most cars',
    '$30.00',
);
(
    '4', -- Tire Repair Service -- 
    '2/22/2020',
    '1',
    'Tire Repair Service for most cars',
    '$25.00',
);
(
    '5', -- Tire Change --
    '2/22/2020',
    '2',
    'Tire Change service for most cars',
    '$50.00',
);
(
    '6', -- Battery Replacement --
    '2/22/2020',
    '3',
    'Battery Replacement for most cars',
    '$50.00',
);
(
    '7', -- Wiper Blade Replacement -- 
    '2/22/2020',
    '1',
    'Wiper Blade Replacement for most cars',
    '$20.00',
);
(
    '8', -- Brake Replacement --
    '2/22/2020',
    '2',
    'Brake Replacement for most cars',
    '$20.00',
);
(
    '9', -- Scheduled Maintenance -- 
    '2/22/2020',
    '3',
    'Scheduled Maintenance including everything listed here in this database',
    '$79.00',
)

Alter Table Mechanic

Insert Into Mechanic(
    'mechanic_id',
    'first_name',
    'last_name',
)Values(
    '1',
    'Randy',
    'Handy',
);
(
    '2',
    'Mandy',
    'Dandy',
);
(
    '3',
    'Hanky',
    'Panky',
);

Alter Table Salesperson

INSERT INTO Salesperson(
    'salesperson_id',
    'first_name',
    'last_name',
)Values(
    '1',
    'Ben',
    'Dover',
);
(
    '2',
    'Crystal',
    'ChanDeLier',
);
(
    '3',
    'Ima',
    'Hogg',
);

Alter Table Vendor

Insert into Vendor(
    'vendor_id',
    'vendor_name',
    'phone_number',
    'address_id',
)VALUES(
    '1',
    'Chevrolet',
    '(123)456-7890',
    '300 Renaissance Center Detroit, MI 48265',
);
(
    '2',
    'Dodge',
    '(098)765-4321',
    '300 Renaissance Center Detroit, MI 48243',
);
(
    '3',
    'Ford',
    '(123)456-7890',
    '1 American Road Dearborn, MI 48126',
);
(
    '4',
    'Toyota',
    '(098)765-4321',
    '6565 Headquarters Dr Plano, TX',
);
(
    '5',
    'BMW',
    '(123)456-7890',
    '300 Chestnut Ridge Rd., Woodcliff Lake, New Jersey',
);
(
    '6',
    'Honda',
    '(098)765-4321',
    '1919 Torrance Blvd Torrance, CA 90501, United States',
);

Alter Table CAR

INSERT INTO CAR(
    'VIN',
    'vendor_id',
    'model',
    'year',
    'color',
    'amount',
)VALUES(
    '1234567890',
    '1',
    'Camaro',
    '2020',
    'Crimson',
    '$25,000.00',
);
(
    '1234567890',
    '1',
    'Silverado',
    '2020',
    'Black',
    '$25,000.00',
);
(
    '1234567890',
    '2',
    'Challenger',
    '2020',
    'Slate Blue',
    '$30,000.00',
);
(
    '1234567890',
    '2',
    'Ram',
    '2020',
    'Maroon',
    '$20,000.00',
);
(
    '1234567890',
    '3',
    'Explorer',
    '2020',
    'Gray',
    '$25,000.00',
);
(
    '1234567890',
    '3',
    'Mustang GT',
    '2020',
    'White w/ Red Stripes',
    '$45,000.00',
);
(
    '1234567890',
    '4',
    'Corolla',
    '2020',
    'Midnight Blue',
    '$10,000.00',
);
(
    '1234567890',
    '4',
    '4Runner',
    '2020',
    'Forest Green',
    '$15,000.00',
);
(
    '1234567890',
    '5',
    'X6',
    '2020',
    'Hot Red',
    '$45,000.00',
);
(
    '1234567890',
    '5',
    'Z3',
    '2020',
    'Sky Blue',
    '$40,000.00',
);
(
    '1234567890',
    '6',
    'Accord',
    '2020',
    'Black',
    '$12,000.00',
);
(
    '1234567890',
    '6',
    'Civic',
    '2020',
    'Silver',
    '$12,000.00',
);