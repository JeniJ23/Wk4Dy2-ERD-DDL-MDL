SELECT *
FROM customer;

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(20),
    customer_email VARCHAR
    );


CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    movie_id INTEGER, 
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
    );


CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR,
   genre VARCHAR
    );

CREATE TABLE customer_order(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    customer_email VARCHAR
    );

CREATE TABLE order_info(
    order_id INTEGER,
    order_description VARCHAR,
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id) ON DELETE CASCADE
    );  


CREATE TABLE consession(
    consession_id SERIAL PRIMARY KEY,
    consession_name VARCHAR,
    consession_descript VARCHAR
    );

