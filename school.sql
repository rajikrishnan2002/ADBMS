CREATE DATABASE school
CREATE TABLE student(id INT NOT NULL,NAME VARCHAR(20),marks INT,grade VARCHAR(5),PRIMARY KEY(id));
INSERT INTO student VALUES(1,'raji',72,'A');
SELECT * FROM student;
CREATE TABLE studnew(stud_id INT NOT NULL,stud_name VARCHAR(20),stud_class VARCHAR(20),PRIMARY KEY(stud_id));
CREATE TABLE classnew(stud_id INT NOT NULL,class_id INT NOT NULL,PRIMARY KEY(stud_id,class_id),FOREIGN KEY(stud_id) REFERENCES studnew(stud_id) ON DELETE CASCADE);
SELECT * FROM studnew;
CREATE TABLE student1(id INT NOT NULL,NAME VARCHAR(20),marks INT,grade VARCHAR(5));
SELECT * FROM student1;
CREATE TABLE student_DB (
   s_id INT NOT NULL UNIQUE,
   l_name VARCHAR(255) NOT NULL,
   f_name VARCHAR(255),age INT);
 INSERT INTO student_DB VALUES(1,'kevin','sam',19);
 SELECT * FROM student_DB;
 INSERT INTO student_DB VALUES(2,'roger','fed',19);
 INSERT INTO student_DB VALUES(3,'nick','furry',19);
 SELECT * FROM student_DB;
 ALTER TABLE studnew
