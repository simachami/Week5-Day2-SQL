CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number INT NOT NULL
);

ALTER TABLE customers ALTER COLUMN phone_number TYPE VARCHAR(255);


CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    movie_id INT NOT NULL,
    branch_id INT NOT NULL,
    movie_time TIME(0) WITHOUT TIME ZONE NOT NULL,
    seat INT NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);


CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(255) NOT NULL,
    rating VARCHAR(255) NOT NULL
);


CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NULL,
    item_price INT NOT NULL
);

CREATE TABLE concessions_cart(
    con_cart_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE concessions_transaction(
    con_transaction_id SERIAL PRIMARY KEY,
    con_cart_id INT NOT NULL,
    concession_id INT NOT NULL,
    product_qnty INT NOT NULL,
    FOREIGN KEY (con_cart_id) REFERENCES concessions_cart(con_cart_id),
    FOREIGN KEY (concession_id) REFERENCES concessions(concession_id)
);

CREATE TABLE branch(
    branch_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    "location" VARCHAR(255) NOT NULL
);

CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);


INSERT INTO customers(
	name,
	email,
	phone_number 
)VALUES(
	'Garry Jersey',
	'test@email.com',
	'458-456-7897'
);

SELECT *
FROM customers c 


INSERT INTO tickets(
	customer_id,
	movie_id,
	branch_id,
	movie_time,
	seat,
	price
)VALUES(
	1,
	1,
	1,
	'18:50',
	16,
	8.00
);

INSERT INTO employee(

)

SELECT *
FROM tickets t 

SELECT *
FROM movies m 

INSERT INTO movies(
	movie_name,
	rating
)VALUES(
	'Dino Town',
	'PG-13'
)

INSERT INTO branch(
	name,
	"location"
)VALUES(
	'Peanut Town',
	'PT'
)

SELECT *
FROM branch b 


