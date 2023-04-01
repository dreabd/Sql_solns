PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS teacher_supplies;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS supplies;


CREATE TABLE teachers(
  id INTEGER Primary Key AUTOINCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  salary INTEGER,
  phone_number NUMERIC(10,0),
  email VARCHAR(30),
  marriage_status BOOLEAN
);

CREATE TABLE supplies(
  id INTEGER Primary Key AUTOINCREMENT,
  name VARCHAR(30)
);


CREATE TABLE teacher_supplies(
  id Integer Primary Key AUTOINCREMENT,
  teacher_id INTEGER,
  supply_id INTEGER,
  quantity INTEGER DEFAULT(5)
);

INSERT INTO supplies (name)
VALUES
  ("Tissues"),
  ("Hand Sanitizer"),
  ("Whiteboard Markers"),
  ("Duct Tape");

INSERT INTO teachers (first_name,last_name,salary,phone_number,email,marriage_status)
VALUES
  ('Jane','Doe', 60000,  1111111111, 'janedoe@gmail.com', false),
  ('John' ,'Smith', 30000, 5555555555, 'johnsmith@yahoo.com', false),
  ('Mickey' ,'Mouse', 100000, 2222222222, 'mickeymouse@yahoo.com', true),
  ('Minnie' ,'Mouse', 110000, 4444444444, 'minniemouse@gmail.com', true),
  ('Mary' ,'Doe', 55000, 3333333333, 'marydoe@hotmail.com' , true),
  ('Mark' ,'Doe', 50000, 6666666666, 'markdoes@gmail.com', true),
  ('Stacy', 'Smith', 45000, 7777777777, 'stacysmith@aol.com', false);

INSERT INTO teacher_supplies (teacher_id,supply_id)
VALUES
  (1,1),
  (3,1),
  (4,1),
  (6,3),
  (6,1),
  (7,1),
  (1,2),
  (3,2),
  (4,2),
  (3,4),
  (5,2),
  (6,2),
  (7,2),
  (1,3),
  (3,3),
  (4,3),
  (5,3),
  (7,3),
  (5,1);

SELECT * FROM teachers;
SELECT * FROM supplies;
SELECT * FROM teacher_supplies;
