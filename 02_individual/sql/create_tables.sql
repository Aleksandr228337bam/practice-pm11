-- 1. Таблица самолетов
CREATE TABLE aircraft (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model TEXT NOT NULL,
    capacity INTEGER NOT NULL
);

-- 2. Таблица рейсов
CREATE TABLE flight (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flight_number TEXT NOT NULL UNIQUE,
    departure_city TEXT NOT NULL,
    arrival_city TEXT NOT NULL,
    departure_time TEXT NOT NULL,
    arrival_time TEXT NOT NULL,
    aircraft_id INTEGER,
    FOREIGN KEY (aircraft_id) REFERENCES aircraft(id)
);

-- 3. Таблица пассажиров
CREATE TABLE passenger (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fio TEXT NOT NULL,
    passport TEXT NOT NULL UNIQUE,
    phone TEXT,
    email TEXT
);

-- 4. Таблица билетов
CREATE TABLE ticket (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flight_id INTEGER,
    passenger_id INTEGER,
    seat_number TEXT NOT NULL,
    price REAL NOT NULL,
    booking_date TEXT,
    FOREIGN KEY (flight_id) REFERENCES flight(id),
    FOREIGN KEY (passenger_id) REFERENCES passenger(id)
);

-- 5. Таблица сотрудников
CREATE TABLE employee (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fio TEXT NOT NULL,
    position TEXT NOT NULL
);

-- 6. Таблица продаж
CREATE TABLE sale (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_id INTEGER,
    employee_id INTEGER,
    sale_date TEXT,
    FOREIGN KEY (ticket_id) REFERENCES ticket(id),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);