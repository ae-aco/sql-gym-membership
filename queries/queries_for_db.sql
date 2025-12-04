/* Number 1: Who are the members with expired memberships as of 20th February 2025? 
Update their membership by extending it for one month.

-- Use this to query the database, this should return 6 records.
SELECT member_id, first_name, last_name, active_until 
FROM members 
WHERE active_until <= '2025-02-20';

-- Update their membership by extending it for one month.
-- Use this to update the members
UPDATE members
SET active_until = '2025-03-19'
WHERE member_id IN ('2','3','8','9','12','13');

-- Use this to verify your changes:
SELECT member_id, first_name, last_name, active_until 
FROM members 
WHERE member_id IN ('2','3','8','9','12','13');
*/

/* Number 2: Which classes take place in the evening? Order this data by day of the week.
SELECT DISTINCT c.class_name, c.day_of_week, c.start_time
FROM classes c
WHERE c.start_time >= '17:00:00'
ORDER BY c.day_of_week, c.start_time; */

/* Number 3: What is the total number of water bottles kept in the inventory?
SELECT SUM(d.stock_count) AS total_water_stock
FROM drinks d
WHERE d.drink_name IN ('Still Water', 'Sparkling Water');
*/

/* Number 4: A member - Jamie Anderson can't recall what type of membership they have. Find their record and membership type.

-- Use this to find the record and membership type.
SELECT m.first_name, m.last_name, mt.type_name 
FROM members m
INNER JOIN membership_types mt ON m.membership_type_id = mt.membership_type_id
WHERE m.first_name = 'Jamie';
*/

/* Number 5: What classes do the trainers teach and when?

-- Use this to query the database to return results of the classes the trainer teach. 
SELECT c.class_name, c.day_of_week, c.trainer_id,  t.first_name AS trainer_first_name, t.last_name AS trainer_last_name
FROM classes c
INNER JOIN trainers t ON c.trainer_id = t.trainer_id;
*/

/* Number 6: How many trainers hold a level 2 certification?

-- Use this query to return data on the number of trainers who hold a level 2 certification.
SELECT COUNT(certification_level)
FROM trainers
WHERE certification_level = '2';
*/

/* What type of membership do the members have?

-- Use this query to see the data of the type of membership the members have.
SELECT m.first_name, m.last_name, mt.type_name
FROM members m
LEFT JOIN membership_types mt ON m.membership_type_id = mt.membership_type_id; */

/*Add a new trainer - Tom Azure and the new specialism he teaches - Kickboxing

--Use this transaction to add and commit the data of the new trainer's details and qualifications, as well as the information of the class they will lead.
START TRANSACTION;

-- This will add Tom's details to the trainer entity.
INSERT INTO trainers (first_name, last_name, date_of_birth, gender, email_address, phone_number, hourly_rate, certification_level, availability)
VALUES ('Tom', 'Azure', '1990-01-01', 'male', 'tomazure@email.com', '07775555678', 50.00, 'Level 3', 'Mon-Wed');

-- This will add the new class which Tom's specialism to the class entity.
INSERT INTO classes (class_name, trainer_id, day_of_week, start_time, duration, max_capacity) 
VALUES ('Kickboxing', LAST_INSERT_ID(), 'Monday', '19:15:00', 60, 8);

COMMIT;
*/