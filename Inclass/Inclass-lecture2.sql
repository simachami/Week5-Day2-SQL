CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY,
email varchar(100) NOT NULL,
"password" varchar(50) NOT NULL,
name VARCHAR(100),
address VARCHAR(150)
);

SELECT *
FROM customer;

CREATE TABLE cart(
cart_id SERIAL PRIMARY KEY,
customer_id INT NOT NULL,
FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE product(
product_id serial PRIMARY KEY,
name varchar(75) NOT NULL, 
description varchar(225) NULL
);


CREATE TABLE cart_product(
cart_product_id serial PRIMARY KEY,
cart_id int NOT NULL,
product_id int NOT NULL,
FOREIGN KEY(cart_id) REFERENCES cart(cart_id),
FOREIGN KEY(product_id) REFERENCES product(product_id)
);


CREATE TABLE "order"(
order_id serial PRIMARY KEY,
cart_id int NOT NULL,
total_price DECIMAL(10,2) NOT NULL,
FOREIGN KEY(cart_id) REFERENCES cart(cart_id)
);

CREATE TABLE sellers(
seller_id serial PRIMARY KEY,
company_name varchar(225) NOT NULL,
email varchar(100) NOT NULL
);

CREATE TABLE inventory(
invetory_id serial PRIMARY KEY,
seller_id int NOT NULL,
product_id int NOT NULL,
product_qnty int NOT NULL,
product_price bigint NOT NULL,
FOREIGN KEY (seller_id) REFERENCES sellers(seller_id),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

ALTER TABLE "order" ALTER COLUMN total_price TYPE NUMERIC(10,2);