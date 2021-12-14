CREATE DATABASE EXAM;

DROP TABLE EMP;

CREATE TABLE DEPT ( 
DEPTNO int, 
DNAME varchar(15),
LOC varchar(10)
);

INSERT INTO DEPT VALUES
(10, 'ACCOUNTING' ,'NEW YORK'),
(20, 'RESEARCH' , 'DALLAS'),
(30, 'SALES' , 'CHICAGO'),
(40, 'OPERATIONS' , 'BOSTON');  

SELECT * FROM DEPT;
----------------------------------------------------------------------------


CREATE TABLE EMP (
EMPNO int,
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float,
COMM float,
DEPTNO int
);

INSERT INTO EMP VALUES
( 7839 , 'KING' , 'MANAGER' , '1991-11-17' , 5000 , NULL , 10 ),
( 7698 , 'BLAKE' , 'CLERK' ,  '1981-05-01' , 2850 , NULL , 30 ),
( 7782 , 'CLARK' , 'MANAGER' , '1981-06-09' , 2450 , NULL , 10 ),
( 7566 , 'JONES' , 'CLERK' , '1981-04-02' , 2975 , NULL , 20 ),
( 7654 , 'MARTIN' , 'SALESMAN' , '1981-09-28' , 1250 , 1400 , 30 ),
( 7499 , 'ALLEN' , 'SALESMAN' , '1981-02-20' , 1600 , 300 , 30 );

SELECT * FROM EMP;



