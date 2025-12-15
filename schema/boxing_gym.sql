CREATE DATABASE boxing_gym;

USE boxing_gym;

-- I've created a membership type entity to show different membership types.
CREATE TABLE membership_types(
membership_type_id INT PRIMARY KEY AUTO_INCREMENT,
type_name VARCHAR(50) UNIQUE NOT NULL,
price DECIMAL (19,4),
duration_months INT
);

-- These are the membership types by name, price and the duration in a monthly format.
INSERT INTO membership_types (type_name, price, duration_months) VALUES
('Standard', 130.00, 1),
('Silver', 165.00, 1),
('Gold', 190.00, 1);

-- An entity of all the members who have joined the gym. 
CREATE TABLE members(
member_id INT PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
gender ENUM('male', 'female', 'non-binary'),
email_address VARCHAR(255) UNIQUE NOT NULL,
phone_number VARCHAR(20) UNIQUE NOT NULL,
address VARCHAR(255),
membership_type_id INT,
join_date DATE NOT NULL,
active_until DATE NOT NULL,
FOREIGN KEY (membership_type_id) REFERENCES membership_types(membership_type_id)
);

-- Data of all gym members 
INSERT INTO members
(first_name, last_name, date_of_birth, gender, email_address, phone_number, address, membership_type_id, join_date, active_until)
VALUES
('Virginia', 'Garland', '1977-03-30', 'female', 'vgarland0@email.com', '07891238914', '223 Ridgeway Road, London', 1, '2025-02-01', '2025-05-01'),
('Dallas', 'Jacobovitch', '1946-01-19', 'male', 'djacobovitch1@email.org', '+447532389560','43 Forster Street, London', 2, '2025-01-15', '2025-02-15'),
('Rebecca', 'Smith', '1957-10-02', 'female', 'becsssmith2@email.org', '+447891284837','01 Dwight Center, Croydon', 3, '2025-01-20', '2025-02-20'),
('Ben', 'Boater', '1995-07-17', 'male', 'bboater3@email.com','+366648956155', '00 Trafalgar Point, Liverpool', 1, '2025-02-10', '2025-03-10'),
('Issac', 'Blake', '1995-09-22', 'male', 'iblake4@email.com','+0019783077453','70 Westminster Junction, Leeds', 2, '2025-01-28', '2025-02-28'),
('Thelma', 'Aoyama', '1988-10-15', 'female', 'thelma3aoy@email.ne.jp', '02073026100', '002 Gallagher Lane, Oxford', 3, '2025-02-05', '2025-03-05'),
('Maggie', 'May', '1964-11-03', 'female', 'maggie.may6@email.com', '02083156046','32 Oxford Street, London', 1, '2025-02-12', '2025-03-12'),
('Leslie', 'Atty', '2004-01-02', 'non-binary', 'latty7@email.edu', '+4476347083', '97 Amazon Hill, Glasgow', 2, '2024-01-22', '2025-02-20'),
('Richard', 'Harcroft', '1938-04-01', 'male', 'rharcroft@email.com', '02072944502', '50 Shoreditch High Street, London', 1, '2024-02-08', '2025-02-07'),
('Alexia', 'Azon', '1990-04-05', 'female', 'azonalexia@email.de', '03003007001', '565 Edmonton Road, London', 3, '2025-01-25', '2025-02-25'),
('Jamie', 'Anderson', '1995-03-12', 'non-binary', 'jamie.anderson@email.com', '+447700123456', '10 Baker Street, London', 1, '2025-02-01', '2025-03-01'),
('Taylor', 'Smith', '1988-07-21', 'non-binary', 'taylor.smith@email.com', '+447700234567', '5 Oxford Road, Manchester', 2, '2025-01-15', '2025-02-15'),
('David', 'Ogunleye', '1992-06-05', 'male', 'david.ogunleye@mail.com', '07700345678', '20 Camden Street, Swansea', 3, '2025-01-20', '2025-02-20'),
('Amelia', 'Fernandez', '1990-02-14', 'female', 'amelia.fernandez@email.com', '+447700456789', '15 Piccadilly Ave, Birmingham', 1, '2025-02-10', '2025-03-10'),
('Charlotte', 'Dubois', '1985-09-30', 'female', 'charlotte.dubois@email.com', '+447700567890', '22 Kings Road, Edinburgh', 2, '2025-01-28', '2025-02-28');

/* I've added a trainers table, they are likely to be self-employed and only work at the location. This information is useful for enquiry and booking purposes. */
CREATE TABLE trainers(
trainer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
date_of_birth DATE,
gender ENUM('male', 'female', 'non-binary'),
email_address VARCHAR(255) UNIQUE NOT NULL,
phone_number VARCHAR(20) UNIQUE NOT NULL,
certification_level INT NOT NULL,
specialism VARCHAR(255), 
hourly_rate DECIMAL(5,2) NOT NULL,
availability VARCHAR(255)
);

-- Data of all trainers
INSERT INTO trainers 
(first_name, last_name, date_of_birth, gender, email_address, phone_number, certification_level, specialism, hourly_rate, availability) 
VALUES
('James', 'Harrington', '1980-05-15', 'male', 'james.harrington@example.com', '+447700678901', 3, 'Boxing Fundamentals', 30.00, 'Mon-Sat'),
('Samuel', 'Adeyemi', '1986-11-23', 'male', 'samuel.adeyemi@example.com', '+447700789012', 4, 'Technical Sparring', 35.00, 'Mon-Sat'),
('Michael', 'Chen', '1991-04-02', 'male', 'michael.chen@example.com', '+07700890123', 2, 'Mixed Boxing', 28.00, 'Tue-Sat'),
('Daniel', 'Johansson', '1987-08-17', 'male', 'daniel.johansson@example.com', '07700901234', 5, 'Advanced Sparring', 40.00, 'Wed-Sat'),
('Liam', 'Williams', '1993-01-05', 'male', 'liam.williams@example.com', '+447700012345', 2, 'Beginners Boxing', 25.00, 'Mon-Fri'),
('Oscar', 'Brown', '1995-12-10', 'male', 'oscar.brown@example.com', '07700123987', 3, 'Intermediate Boxing', 30.00, 'Mon-Fri'),
('Sophia', 'Evans', '1989-06-22', 'female', 'sophia.evans@example.com', '07700456123', 4, 'Women’s Sparring', 35.00, 'Wed-Sat'),
('Emily', 'Martinez', '1994-10-07', 'female', 'emily.martinez@example.com', '07700789654', 2, 'Women’s Beginner Boxing', 28.00, 'Mon-Fri');

/* The classes table holds information on the classes taking place at the gym. The trainer ID is linked to this table because they lead the classes. Classes are set to a maximum capacity of 8 bookings or less. 1 booking = 1 person.*/
CREATE TABLE classes(
class_id INT PRIMARY KEY AUTO_INCREMENT,
class_name VARCHAR(255) NOT NULL,
trainer_id INT,
day_of_week ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'),
start_time TIME,
duration INT CHECK (duration <= 60),
max_capacity INT NOT NULL CHECK (max_capacity <= 8),
FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id)
);

-- Data of all the classes available at the gym.
INSERT INTO 
classes (class_name, trainer_id, day_of_week, start_time, duration, max_capacity) 
VALUES
('Beginners Boxing', 5, 'Monday', '18:15:00', 60, 8),
('Intermediate Boxing', 6, 'Tuesday', '19:15:00', 60, 8),
('Technical Sparring', 2, 'Wednesday', '20:15:00', 60, 8),
('Mixed Boxing', 3, 'Thursday', '18:15:00', 60, 8),
('Women’s Sparring', 7, 'Friday', '19:15:00', 60, 8),
('Women’s Beginner Boxing', 8, 'Saturday', '10:00:00', 60, 8),
('Beginners Boxing', 5, 'Saturday', '11:00:00', 60, 8),
('Intermediate Boxing', 6, 'Saturday', '12:00:00', 60, 8);

/* The bookings entity holds data on which classes members have booked, this entity will be useful when querying if a class is at max_capacity.*/
CREATE TABLE bookings(
booking_id INT PRIMARY KEY AUTO_INCREMENT, 
member_id INT, 
class_id INT, 
booking_date DATE NOT NULL,
FOREIGN KEY (member_id) REFERENCES members(member_id),
FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

/* This entity is only relevant to the membership table, not purchases made by a member in the gym. This is useful to see if members have paid for their memberships.*/
CREATE TABLE payments(
payment_id INT PRIMARY KEY AUTO_INCREMENT, 
member_id INT NOT NULL, 
amount DECIMAL (19,4) NOT NULL CHECK (amount > 0), 
payment_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
payment_status ENUM('pending', 'completed', 'failed') NOT NULL,
FOREIGN KEY (member_id) REFERENCES members(member_id)
);

/* I've included this table, as it would be useful for VIEWS. The idea behind this is that only management would be responsible for equipment maintenance for health and safety/insurance purposes, so not all staff would have access to this data. */
CREATE TABLE equipment(
equipment_id INT PRIMARY KEY AUTO_INCREMENT, 
equipment_name VARCHAR(255) NOT NULL, 
quantity INT NOT NULL, 
last_maintenance_date DATE, 
next_maintenance_date DATE, 
equipment_condition ENUM('operational', 'scheduled maintenance', 'out of service', 'repaired') NOT NULL
);

-- Data of the equipment where maintenance needs to be tracked.
INSERT INTO equipment 
(equipment_name, quantity, last_maintenance_date, next_maintenance_date, equipment_condition)
VALUES
('Punching Bag', 4, '2025-01-15', '2025-07-15', 'operational'),
('Dumbbells', 12, '2025-02-01', '2025-08-01', 'operational'),
('Reflex Bag', 8, '2025-02-07', '2025-08-10', 'scheduled maintenance'),
('Double End Bag', 4, '2025-01-10', '2025-07-10', 'operational'),
('Strength Training Machine - Chest Press', 2, '2024-09-22', '2025-03-21', 'scheduled maintenance'),
('Strength Training Machine - Leg Press', 2, '2025-01-10', '2025-07-10', 'operational'),
('Strength Training Machine - Smith Machine', 1, '2025-01-10', '2025-07-10', 'out of service'),
('Strength Training Machine - Rowing', 2, '2025-02-07', '2025-08-10', 'repaired');

-- This entity has been created to track the price/inventory of gym merchandise.
CREATE TABLE merchandise(
merch_id INT PRIMARY KEY AUTO_INCREMENT, 
merch_name VARCHAR(255) NOT NULL, 
price DECIMAL(19,4) NOT NULL, 
stock_count INT NOT NULL
);

-- Data of the merchandise available at the gym.
INSERT INTO merchandise 
(merch_name, price, stock_count)
VALUES
('T-Shirt - Blue', 14.00, 50),
('T-Shirt - White', 14.00, 25),
('Boxing Shorts - Blue', 21.50, 30),
('Boxing Shorts - White', 21.50, 35),
('Boxing Gloves - 12oz', 45.00, 20),
('Boxing Gloves - 14oz', 55.00, 16),
('Boxing Wraps - White', 12.99, 50),
('Boxing Wraps - Black', 12.99, 50);

-- This entity has been created to track the price/inventory of drinks sold at the gym.
CREATE TABLE drinks(
drink_id INT PRIMARY KEY AUTO_INCREMENT, 
drink_name VARCHAR(255) NOT NULL, 
price DECIMAL(19,4) NOT NULL CHECK (price >= 0), 
stock_count INT NOT NULL CHECK (stock_count >= 0)
);

-- Data of drinks available at the gym.
INSERT INTO drinks 
(drink_name, price, stock_count)
VALUES
('Still Water', 2.50, 200),
('Sparkling Water', 1.50, 150),
('Protein Shake - Chocolate', 3.50, 50),
('Protein Shake - Vanilla', 3.50, 50),
('Vegan Protein Shake - Chocolate', 3.00, 30),
('Vegan Protein Shake - Protein Shake', 3.00, 30),
('Coffee', 2.00, 50),
('Matcha latte', 3.00, 20);

-- This entity has been created to track equipment that has been rented by members i.e Boxing gloves.
CREATE TABLE rentals(
rental_id INT PRIMARY KEY AUTO_INCREMENT, 
item_name VARCHAR(50) NOT NULL, 
rental_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
return_date DATETIME, 
rental_status ENUM('rented', 'returned') NOT NULL
);

-- Data of items and equipment that are being rented or have been returned
INSERT INTO rentals 
(item_name, rental_date, return_date, rental_status)
VALUES
('Towel - Small', '2025-02-10 18:00:00', '2025-02-10 19:00:00', 'rented'),
('Boxing Gloves - 12oz', '2025-02-10 18:15:00', '2025-02-10 19:15:00', 'rented'),
('Towel - Small', '2025-02-10 19:00:00', '2025-02-10 20:00:00', 'rented'),
('Towel - Large', '2025-02-10 19:00:00', '2025-02-10 20:00:00', 'rented'),
('Boxing Gloves - 12oz', '2025-02-11 19:30:00', '2025-02-11 20:30:00', 'rented'),
('Towel - Large', '2025-02-11 19:30:00', '2025-02-11 20:30:00', 'rented'),
('Boxing Gloves - 12oz', '2025-02-15 09:00:00', '2025-02-15 09:30:00', 'returned'),
('Boxing Gloves - 14oz', '2025-02-15 09:00:00', '2025-02-15 09:30:00', 'returned');

-- This entity was created to track what members have purchased, this data is useful for trend analysis.
CREATE TABLE purchases(
purchase_id INT PRIMARY KEY AUTO_INCREMENT,
member_id INT,
item_type ENUM('merchandise', 'drink') NOT NULL,
quantity INT NOT NULL CHECK (quantity > 0),
purchase_date DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (member_id) REFERENCES members(member_id)
);


