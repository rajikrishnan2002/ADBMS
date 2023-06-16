CREATE DATABASE empDB;
USE empDB;
CREATE TABLE emp (emp_id INT PRIMARY KEY, emp_name VARCHAR(255), emp_city VARCHAR(255), emp_admdate DATE NOT NULL);
SELECT * FROM emp;
ALTER TABLE emp ADD emp_contact INT NOT NULL;
ALTER TABLE emp DROP PRIMARY KEY;
ALTER TABLE emp MODIFY COLUMN emp_admdate YEAR;
DROP TABLE emp;
TRUNCATE TABLE students;
ALTER TABLE emp MODIFY COLUMN emp_id INT UNSIGNED PRIMARY KEY;


START TRANSACTION;
CREATE TABLE students (roll_no INT,student_name VARCHAR(150),course VARCHAR(150));
INSERT INTO students VALUES(1,'ashish','java');
INSERT INTO students VALUES(2,'rahul','python');
SELECT * FROM students;
INSERT INTO students VALUES(3,'divya','arch');
SELECT student_name FROM students;
SELECT roll_no,student_name,course FROM students WHERE roll_no=3;
UPDATE students SET roll_no=roll_no+10 WHERE student_name='ashish';
UPDATE students SET student_name='aman' WHERE roll_no=2;
DELETE FROM students WHERE roll_no=11;
DELETE FROM students WHERE student_name='divya';
START TRANSACTION;
DELETE FROM students WHERE course='python';
ROLLBACK;
SAVEPOINT sp1;
DELETE FROM students WHERE student_name='divya';
ROLLBACK;
SAVEPOINT sp2;
DELETE FROM students WHERE course='java';
ROLLBACK TO sp2;

SET autocommit=0;

CREATE TABLE players( id INT,first_name VARCHAR(255),last_name VARCHAR(255),date_of_birth DATE,place_of_birth VARCHAR(255),country VARCHAR(255),PRIMARY KEY (id));
INSERT INTO players VALUES(1,'Shikhar','Dhavan',DATE('1981-12-05'),'Delhi','India','Delhi',50000);
INSERT INTO players VALUES(2,'Virat','Kohli',DATE('1988-11-05'),'Delhi','India','Delhi',2000);
INSERT INTO players VALUES(3,'Jonathan','Trott',DATE('1981-04-22'),'CapeTown','SouthAfrica','capetown',3000);
COMMIT;
SELECT * FROM players;

INSERT INTO players VALUES(4,'Kumara','Sangakkara',DATE('1988-08-21'),'Matele','Srilanka','sangakkara',4900);
INSERT INTO players VALUES(5,'Rohit','Sharma',DATE('1980-05-17'),'Nagpur','India','nagpur',460999);
INSERT INTO players VALUES(6,'Ravindra','Jadeja',DATE('1985-09-12'),'Nagpur','India','burnley',123000);
INSERT INTO players VALUES(7,'James','Anderson',DATE('1989-07-10'),'Burnley','England','nagpur',345000);
ROLLBACK;
SELECT * FROM players;
SELECT first_name FROM players ORDER BY date_of_birth ASC;
SELECT first_name FROM players ORDER BY date_of_birth DESC;
ALTER TABLE players ADD D_state VARCHAR(15);
ALTER TABLE players ADD D_salary INT;
CREATE VIEW raji AS SELECT first_name,last_name FROM players;
SELECT * FROM raji;
SELECT D_state,AVG(D_salary) AS salary FROM players GROUP BY D_state ORDER BY D_state DESC;




