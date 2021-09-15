--Artist Table
--problem 1
INSERT INTO artist (name) VALUES ('Leonardo');
INSERT INTO artist (name) VALUES ('Leonardo Davinci');
INSERT INTO artist (name) VALUES ('Michael Angelo');

--learned during review- I can combine all the artists and seperate by a comma
insert into artist ( 
    name) values 
        ('One direction'), ('Nsync'), ('Backstreet Boys')
);

--problem 2
SELECT * FROM artist ORDER BY name LIMIT 5;

--Employee Table
--problem 1
SELECT first_name, last_name FROM employee WHERE city = 'calgary';

--problem 
SELECT * FROM employee where first_name = 'Nancy';
SELECT * FROM employee WHERE reports_to = 2;

--problem 3
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';
--review fix-- SELECT city, count(*) FROM employee WHERE city =  'Lethbridge';

--Invoice Table
--problem 1
SELECT COUNT (*) FROM invoice WHERE billing_country = 'USA';

--problem 2
SELECT MAX(total) FROM invoice;

--problem 3
SELECT MIN(total) FROM invoice;

--problem 4
SELECT * FROM invoice WHERE total > 5;

--problem 5
SELECT COUNT(*) FROM invoice WHERE total < 5;

--problem 6
SELECT SUM(total) FROM invoice;

--JOIN Queries Various tables
--problem 1
SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

--problem 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

--problem 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

--problem 4
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;
