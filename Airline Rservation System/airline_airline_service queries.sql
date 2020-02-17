    
CREATE TABLE passenger(
	passenger INT(10) AUTO_INCREMENT NOT NULL,
    booking_id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(75),
    password VARCHAR(255),
    address VARCHAR(500),
    phone VARCHAR(15),
    sex VARCHAR(10),
    age_category VARCHAR(10),
    PRIMARY KEY(id)
);


SELECT * FROM passenger;


INSERT INTO passenger(booking_id, first_name, last_name, email, password, address, phone, sex, age_category)
values(65665454, 'John', 'Doe', 'jbeginc@raven.com', 'airLINE123', 'House 1, 67 Road, Gwarinpa, Abuja', 012358545, 'Male', 'Adult'), 
	(63354545,'Jane', 'Doe', 'auywech@swift-mail.net', 'oa=123', 'Suit A7, Roger Cresent, Gwarinpa, Abuja', 08160557547, 'Female', 'Adult'),
    (63365655,'Little-Jane', 'Doe', 'auywech@swift-mail.net', 'oa=123', 'Suit A7, Roger Cresent, Gwarinpa, Abuja', 08160557547, 'Female', 'Child');
	    
    SELECT * FROM passenger;
    
CREATE TABLE flight(
id INT AUTO_INCREMENT,
flight_id INT,
flight_number VARCHAR(10),
coming_from VARCHAR(50),
going_to VARCHAR(50),
arrival_date DATE,
arrival_time TIME,
price DECIMAL(15,2),
PRIMARY KEY(id),
FOREIGN KEY (flight_id) REFERENCES passenger(id)
);

SELECT * FROM flight;

INSERT INTO flight(flight_id, flight_number, coming_from, going_to, arrival_date, arrival_time, price)
values(2, 'A75410', 'Abuja', 'Calabar', '2020-02-20', '123000', 30000.00),
(1, 'A9HFGD', 'Abuja', 'Lagos', '2020-02-18', '0001100', '35000.00'),
(3, 'A9HFGD', 'Abuja', 'Lagos', '2020-02-18', '0001100', '35000.00');



CREATE TABLE airport(
id INT,
airport_id INT,
airport_name VARCHAR(75),
airport_code VARCHAR(10),
country VARCHAR(15),
city VARCHAR(15),
PRIMARY KEY(id),
FOREIGN KEY(airport_id) REFERENCES flight(id)
);

SELECT * FROM airport;


CREATE TABLE airline_service(
airline_id VARCHAR(10),
airport_id VARCHAR(10),
airline_name VARCHAR(50),
airline_code VARCHAR(10),
PRIMARY KEY(airline_id)
);


INSERT INTO airline_service(airline_id, airport_id, airline_name, airline_code)
values('5A54F6', 'W3', 'AIR PEACE', 'PEACE BIRD'),
('5A54F5', 'P4', 'Arik Air', 'ARA'),
('5AG4S4', 'P4', 'Arik Air', 'ARA');

SELECT * FROM airline_service;
