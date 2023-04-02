-- Married People
SELECT *
FROM teachers
WHERE marriage_status = 1;

-- Teachers that use Gmail
SELECT teachers.first_name, teachers.last_name
FROM teachers
WHERE email LIKE "%gmail%";
-- Jane Doe, Minnie Mouse, Mark Doe

-- Teacher who make > 50,000 and is Married
SELECT * 
FROM teachers
WHERE salary > 50000 AND marriage_status = 1
LIMIT 1;
-- Should return Mickey Mouse

-- Return name of Teachers who own Duct Tape 
SELECT teachers.first_name, teachers.last_name
FROM teachers 
JOIN teacher_supplies ON (teachers.id = teacher_supplies.teacher_id)
JOIN supplies ON (supplies.id = teacher_supplies.supply_id)
WHERE supplies.name = "Duct Tape";
-- Should return Mickey Mouse

-- Get rid of the whiteboard markers and tissues of teachers who make more than 50000
SELECT * from teacher_supplies;

UPDATE teacher_supplies
SET teacher_supplies.quantity = 0
JOIN teachers ON (teachers.id = teacher_supplies.teacher_id)
JOIN supplies ON (supplies.id = teacher_supplies.supply_id)
WHERE teachers.salary > 50000 AND (supplies.name = "Whiteboard Markers" OR supplies.name = "Tissues");

SELECT * from teacher_supplies;
-- This one is a struggle

-- Update Mickey and Minnie's marraige status to false
UPDATE teachers
SET marriage_status = 0
WHERE teachers.last_name = "Mouse";


-- Delete Mickey from the system
DELETE FROM teachers 
WHERE first_name = "Mickey" AND last_name = "Mouse";

-- Update Minnie's Number 9999999999
UPDATE teachers
SET phone_number = 9999999999
WHERE teachers.last_name = "Mouse";

-- Update Minnie's Number 9999999999
UPDATE teachers
SET last_name = "Mouse", marriage_status = 1
WHERE teachers.first_name = "Jane" AND teachers.last_name = "Doe";



