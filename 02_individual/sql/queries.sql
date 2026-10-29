SELECT * FROM flight;

SELECT AVG(price) AS avg_ticket_price FROM ticket;

SELECT flight_id, COUNT(*) AS ticket_count FROM ticket GROUP BY flight_id;

SELECT t.id, p.fio, t.seat_number, t.price 
FROM ticket t
JOIN passenger p ON t.passenger_id = p.id;

SELECT f.flight_number, f.departure_city, f.arrival_city, a.model 
FROM flight f
JOIN aircraft a ON f.aircraft_id = a.id;

SELECT * FROM ticket 
WHERE price > (SELECT AVG(price) FROM ticket);

SELECT * FROM passenger WHERE fio LIKE 'Иван%';

SELECT f.flight_number, t.seat_number 
FROM flight f 
LEFT JOIN ticket t ON f.id = t.flight_id;

SELECT e.fio, COUNT(s.id) AS total_sales 
FROM employee e 
LEFT JOIN sale s ON e.id = s.employee_id 
GROUP BY e.id;

SELECT flight_id, SUM(price) AS total_revenue 
FROM ticket 
GROUP BY flight_id;

SELECT MAX(price) AS max_ticket_price FROM ticket;

SELECT * FROM employee;