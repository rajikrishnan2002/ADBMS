CREATE DATABASE employee
DESC emp;
CREATE TABLE emp(empid INT PRIMARY KEY,empname VARCHAR(20),empsalary VARCHAR(20));
INSERT INTO emp VALUES(1,"Devi","200000");
INSERT INTO emp VALUES(2,"Devu","300000");
INSERT INTO emp VALUES(3,"Raji","400000");
SELECT * FROM emp;

SELECT empid,empname,empsalary,empsalary+100
AS "empsalary+100" FROM emp;

SELECT empid,empname,empsalary,empsalary+empid
AS "empsalary+empid" FROM emp;


SELECT empid,empname,empsalary,empsalary-100
AS "empsalary-100" FROM emp;

SELECT empid,empname,empsalary,empsalary-empid
AS "empsalary-empid" FROM emp;

SELECT empid,empname,empsalary,empsalary*100
AS "empsalary*100" FROM emp;

SELECT empid,empname,empsalary,empsalary*empid
AS "empsalary*empid" FROM emp;


SELECT empid,empname,empsalary,empsalary/100
AS "empsalary/100" FROM emp;

SELECT empid,empname,empsalary,empsalary/empid
AS "empsalary/empid" FROM emp;


SELECT empid,empname,empsalary,empsalary%100
AS "empsalary%100" FROM emp;

SELECT empid,empname,empsalary,empsalary%empid
AS "empsalary%empid" FROM emp;







