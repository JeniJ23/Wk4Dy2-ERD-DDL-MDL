INSERT INTO customer(
    customer_id,
    customer_name,
    customer_email,
)VALUES(
    '001',
    'Jimmy Buck',
    'Jbuck99@hotmail.com',
);

SELECT *
FROM customer;


INSERT INTO ticket(
    ticket_id,
    customer_id,
    movie_id, 
    (movie_id) REFERENCES movie(movie_id),
    (customer_id) REFERENCES customer(customer_id),
)VALUES (
    '101',
    '001',
    '1172',
);

INSERT INTO movie(
    movie_id,
    title,
   genre,
) VALUES (
    '1172',
    'Ghostbusters',
    'Comedy',
);

INSERT INTO customer_order(
    order_id,
    customer_id,
    customer_email,
) VALUES (
    '2001',
    '001',
    'Jbuck99@hotmail.com','
);

INSERT INTO order_info(
    order_id,
    order_description,
    order_id) REFERENCES customer_order(order_id) ON DELETE CASCADE
) VALUES (
    '2001',
    'Cult Classic Codemy',
); 

INSERT INTO consession(
    consession_id,
    consession_name,
    consession_descript,
) VALUES (
    '50050',
    'Hot Tamalies',
    'Cinnamin chewy candy,'
);
