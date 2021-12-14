/* Exercise 1 */

use cdacmumbaipgdacsep2021;

show databases;

create database  cdacmumbai;

/*1)*/
CREATE TABLE SEMP (
EMPNO CHAR(4),
EMPNAME CHAR(20),
BASIC FLOAT,
DEPTNO CHAR(2),
DEPTHEAD CHAR(4)
);

SHOW TABLES;

describe SEMP;

/*2)*/
CREATE TABLE SDEPT (
DEPTNO CHAR(20),
DEPTNAME CHAR(15)
);

/*3)*/
INSERT INTO SDEPT ( DEPTNO,DEPTNAME)
VALUES (10, "DEVELOPMENT"),
(20, "TRAINING");

DESCRIBE SDEPT;

SELECT * FROM SDEPT;

/*4)*/
INSERT INTO SEMP VALUES
('0001' , 'SUNIL' , 6000 , '10' ,NULL) ,
('0002' , 'HIREN' , 8000 , '20' ,NULL) ,
('0003' , 'ALI' , 4000 , '10' , '0001') ,
('0004' , 'GEORGE' , 6000 ,NULL, '0002'); 

SELECT * FROM SEMP;
 
/*5)*/
create table S(
`S#` VARCHAR(2),
SNAME VARCHAR(10),
STATUS INT(2),
CITY VARCHAR(10)
);

CREATE TABLE P(
`P#` VARCHAR(2),
PNAME VARCHAR(8),
COLOR VARCHAR(6),
WEIGHT INT(2),
CITY VARCHAR(8)
);

CREATE TABLE J(
`J#` VARCHAR(2),
JNAME VARCHAR(8),
CITY VARCHAR(8)
);

INSERT INTO S VALUES
( 'S1' , 'SMITH' , 20 , 'LONDON'),
( 'S2' , 'JONES' , 10 , 'PARIS'),
( 'S3' , 'BLAKE' , 30 , 'PARIS'),
( 'S4' , 'CLARK' , 20 , 'LONDON'),
( 'S5' , 'ADAMS' , 30 , 'ATHENS');

SELECT * FROM S;

INSERT INTO P VALUES
( 'P1' , 'NUT' , 'RED' , 12 , 'LONDON' ),
( 'P2' , 'BOLT' , 'GREEN' , 17 , 'PARIS' ),
( 'P3' , 'SCREW' , 'BLUE' , 17 , 'ROME' ),
( 'P4' , 'SCREW' , 'RED' , 14 , 'LONDON' ),
( 'P5' , 'CAM' , 'BLUE' , 12 , 'PARIS' ),
( 'P6' , 'COG' , 'RED' , 19 , 'LONDON' );

SELECT * FROM P;

INSERT INTO J VALUES
( 'J1' , 'SORTER' , 'PARIS' ),
( 'J2' , 'PUNCH' , 'ROME' ),
( 'J3' , 'READER' , 'ATHENS' ),
( 'J4' , 'CONSOLE' , 'ATHENS' ),
( 'J5' , 'COLLATOR' , 'LONDON' ),
( 'J6' , 'TERMINAL' , 'OSLO' ),
( 'J7' , 'TAPE' , 'LONDON' );

SELECT * FROM J;

CREATE TABLE SPJ (
`S#` VARCHAR(2), 
`P#` VARCHAR(2),
`J#` VARCHAR(2),
QTY INT
);  

INSERT INTO SPJ VALUES
( 'S1' , 'P1' , 'J1' , 200 ),
( 'S1' , 'P1' , 'J4' , 700 ),
( 'S2' , 'P3' , 'J1' , 400 ),
( 'S2' , 'P3' , 'J2' , 200 ),
( 'S2' , 'P3' , 'J3' , 200 ),
( 'S2' , 'P3' , 'J4' , 500 ),
( 'S2' , 'P3' , 'J5' , 600 ),
( 'S2' , 'P3' , 'J6' , 400 ),
( 'S2' , 'P3' , 'J7' , 800 ),
( 'S2' , 'P5' , 'J2' , 100 ),
( 'S3' , 'P3' , 'J1' , 200 ),
( 'S3' , 'P4' , 'J2' , 500 ),
( 'S4' , 'P6' , 'J3' , 300 ),
( 'S4' , 'P6' , 'J7' , 300 ),
( 'S5' , 'P2' , 'J2' , 200 ),
( 'S5' , 'P2' , 'J4' , 100 ),
( 'S5' , 'P5' , 'J5' , 500 ),
( 'S5' , 'P5' , 'J7' , 100 ),
( 'S5' , 'P6' , 'J2' , 200 ),
( 'S5' , 'P1' , 'J4' , 1000 ),
( 'S5' , 'P3' , 'J4' , 1200 ),
( 'S5' , 'P4' , 'J4' , 800 ),
( 'S5' , 'P5' , 'J4' , 400 ), 
( 'S5' , 'P6' , 'J4' , 500 );

SELECT * FROM SPJ;

/*[5]*/
SELECT * FROM S;
/*[6]*/
SELECT `S#`, SNAME FROM S;
/*[7]*/
SELECT PNAME, COLOR FROM P WHERE CITY = 'LONDON';
/*[8]*/
SELECT * FROM S  WHERE CITY = 'LONDON';
 /*[9]*/
SELECT * FROM S  WHERE CITY = 'Paris' or CITY = 'Athens'; 
 /*[10]*/
 SELECT * FROM J  WHERE CITY = 'ATHENS';
 /*[11]*/
 SELECT * FROM P WHERE WEIGHT >= 12 AND WEIGHT <= 14;
 /*[12]*/
 SELECT * FROM S WHERE STATUS >= 20; 
 /*[13]*/
 SELECT * FROM S WHERE CITY != 'LONDON';
 /*[14]*/
 SELECT CITY FROM S;
 /*[15]*/
 SELECT WEIGHT AS GRAM, WEIGHT*1000 AS MILLIGRAM, WEIGHT/1000 AS KILOGRAM FROM P;
 
 
 
 /******************************************************************************/
 
 CREATE  TABLE DEPT (
 DEPTNO INT,
 DNAME VARCHAR(15),
 LOC VARCHAR(10)
 );
 
 INSERT INTO DEPT VALUES
 (10 , 'ACCOUNTING' , 'NAGPUR' ),
 (10 , 'RESEARCH' , 'DELHI' ),
 (10 , 'SALES' , 'KOLKATA' ),
 (10 , 'OPERATION' , 'MUMBAI' );
 
 SELECT * FROM DEPT;
 
  CREATE  TABLE EMP (
 EMPNO INT,
 ENAME VARCHAR(10),
 JOB VARCHAR(9),
 HIREDATE DATE,
 SAL FLOAT,
 COMM FLOAT,
 DEPTNO INT
 );
 
 INSERT INTO EMP VALUES
( 7839 , 'KRISHNA' ,  'MANAGER'  , '1991-11-17' , 5000 , NULL ,10 ),
( 7698 , 'BHAVANA' , 'CLERK' ,  '1981-05-01' , 2850 , NULL , 30 ),
( 7782 , 'CHETAN' ,  'MANAGER' ,  '1981-06-09' ,  2450 , NULL , 10 ),
( 7566  , 'JAMILA' , 'CLERK' , '1981-04-02' , 2975 , NULL , 20),
( 7654 , 'MAHENDRA' ,  'SALESMAN' ,  '1981-09-28' , 1250 , 1400 , 30),
( 7499 , 'AJIT' , 'SALESMAN' , '1981-02-20' , 1600 , 300 , 30 );
 
 SELECT * FROM EMP;
 
 /* ******************************************************************************************************************************* */
 
 
 
 
 
 
 
 
 
 
 
 