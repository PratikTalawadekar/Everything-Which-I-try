CREATE DATABASE ASSIGN1;

use ASSIGN1;

/*A}*/
CREATE TABLE SALESPEOPLE (
Snum int(4),
Sname varchar(10),
City varchar(10),
Comm float(3,2)
);

/*B}*/
CREATE TABLE CUSTOMER (
Cnum int(4),
Cname varchar(10),
City varchar(10),
Rating int(4),
Sname int(4)
);

/*C}*/
CREATE TABLE ORDERS (
Onum int(4),
Amt float(7,2),
Odate date,
Cnum int(4),
Snum int(4)
);

SELECT * FROM SALESPEOPLE;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

INSERT INTO SALESPEOPLE VALUES
( '1001' , 'Peel' ,  'London' , '.12' ),
( '1002' , 'Serres' , 'San Jose' , '.13' ),
( '1004' , 'Motika' , 'London' ,'.11' ),
( '1007' , 'Rifkin' , 'Barcelona' , '.15' ),
( '1003' , 'Axelrod' , 'New York' , '.10' );

SELECT * FROM SALESPEOPLE;

INSERT INTO CUSTOMER VALUES
( '2001' , 'Hoffman' , 'London' , '100' , '1001' ), 
( '2002' , 'Giovanni' , 'Rome' , '200' , '1003' ),
( '2003' , 'Liu San' , 'Jose' , '200' , '1002' ),
( '2004' , 'Grass' , 'Berlin' , '300' , '1002' ),
( '2006' , 'Clemens' , 'London' , '100' , '1001' ), 
( '2008' , 'Cisneros' , 'San Jose' , '300' , '1007' ), 
( '2007' , 'Pereira' , 'Rome' , '100' , '1004' );

SELECT * FROM CUSTOMER;

INSERT INTO ORDERS VALUES
( 3001 , 18.69 , '1990-10-03' , 2008 , 1007 ), 
( 3003 , 767.19 , '1990-10-03' , 2001 , 1001 ), 
( 3002 , 1900.10 , '1990-10-03' , 2007 , 1004 ), 
( 3005 , 5160.45 , '1990-10-03' , 2003 , 1002 ), 
( 3006 , 1098.16 , '1990-10-03' , 2008 , 1007 ), 
( 3009 , 1713.23 , '1990-10-04' , 2002 , 1003 ), 
( 3007 , 75.75 , '1990-10-04' , 2004 , 1002 ), 
( 3008 , 4723.00 , '1990-10-05' , 2006 , 1001 ), 
( 3010 , 1309.95 , '1990-10-06' , 2004 , 1002 ), 
( 3011 , 9891.88 , '1990-10-06' , 2006 , 1001 );

SELECT * FROM ORDERS;

/* ASSIGNMENT 2 STARTS FROM HERE */


/* ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| */

/* ---------------------------------------------------------------------------------------------------------------------------------------- */
create database practiceset;
use practiceset;

DROP TABLE IF EXISTS customers;

create table customers
(
customer_Id int(11) not null,
First_Name varchar(50) not null,
Last_Name varchar(50) not  null,
phone varchar(50) not null,
creditLimit decimal(10,2) default null,
constraint pk primary key (customer_id)
);

insert into customers values
(103,'Atelier','Schmitt','08-78966578','21000.00'),
(112,'Signal','King','7025551838','71800.00'),
(114,'Ferguson','Peter','03-9520 4555','117300.00'),
(119,'Labrune','Janine','40.67.8555','118200.00'),
(121,'Bergulfsen','Jonas ','07-989555','81700.00'),
(124,'Nelson','Susan','4155551450','210500.00'),
(125,'Piestrzeniewicz','Zbyszek ','(26) 642-7555','0.00'),
(128,'Keitel','Roland','+49 6966 90 2555','59700.00'),
(129,'Murphy','Julie','6505555787','64600.00'),
(131,'Lee','Kwai','2125557818','114900.00'),
(141,'Freyre','Diego ','(91) 555 94 44','227600.00'),
(144,'Berglund','Christina','0921-12 3555','53100.00'),
(145,'Petersen','Jytte ','31 12 3555','83400.00'),
(146,'Saveley','Mary','78.32.5555','123900.00'),
(148,'Eric','Jecob','+65 2217555','103800.00'),
(151,'Young','Jeff','2125557413','138500.00');

drop table if exists orders;

create table orders(
order_id int not null,
order_Date date not null,
shipped_date date default null,
Deliver varchar(15) not null, 
customer_id int(11) not null,
constraint p_k primary key (order_id),
constraint fk foreign key (customer_id) references customers(customer_id) on update cascade on delete cascade);


insert into orders values
(10100,'2003-01-06','2003-01-13','Shipped',114),
(10101,'2003-01-09','2003-01-18','Shipped',125),
(10102,'2003-01-10','2003-01-18','Shipped',129),
(10103,'2003-01-29','2003-02-07','Shipped',121),
(10104,'2003-01-31','2003-02-09','Shipped',141),
(10105,'2003-02-11','2003-02-21','Shipped',145);

alter table orders add column package_stat varchar(50);

update orders set package_stat = 'not available';

delete from customers where creditLimit = 0.0;

/*.............................................................................*/

select first_name from customers where first_name like '%el%';

select customers.first_name,customers.last_name ,orders.order_id from customers,orders
where customers.customer_id = orders.customer_id and orders.deliver = 'shipped'; 

select count(customer_id) no_of_customers from customers where creditlimit>50000;

select customers.customer_id , concat(first_name," ",last_name) as name ,order_id, deliver from customers left outer join orders on
(customers.customer_id = orders.customer_id) order by order_id desc;

select first_name,last_name from customers order by creditlimit;


delimiter //
create procedure order_day()
begin
select customer_id,dayname(order_date) from orders;
end
//
delimiter ;

call order_day();

delimiter //
create procedure customer_search(N varchar(10))
begin
select max(creditlimit) from customers where fname = N;
end;
//
delimiter ;

/*--------------------------------------------------------------------*/

create table dept
(deptno int(2),
dname varchar(14),
loc varchar(13));

insert into dept values
(10, 'ACCOUNTING','NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

create table emp 
(Empno int(4),
Ename varchar(10),
Job varchar(9),
Hiredate date,
Sal float(7,2),
Comm float(7,2),
Deptno int(2)
);

insert into emp values 
(7369, 'SMITH', 'CLERK', str_to_date('17-DEC-80','%d-%M-%y'), 800, null, 20),
(7499, 'ALLEN', 'SALESMAN', str_to_date('20-FEB-81','%d-%M-%y'), 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', str_to_date('22-FEB-81','%d-%M-%y'), 1250, 500, 30),
(7566, 'JONES', 'MANAGER', str_to_date('02-APR-81','%d-%M-%y'), 2975, null, 20),
(7654, 'MARTIN', 'SALESMAN', str_to_date('28-SEP-81','%d-%M-%y'), 1400, null, 30),
(7698, 'BLAKE', 'MANAGER', str_to_date('01-MAY-81','%d-%M-%y'), 2850, null, 30),
(7782, 'CLARK', 'MANAGER', str_to_date('09-JUN-81','%d-%M-%y'), 2450, null, 10),
(7788, 'SCOTT', 'ANALYST', str_to_date('09-DEC-82','%d-%M-%y'), 3000, null, 20),
(7839, 'KING', 'PRESIDENT', str_to_date('17-NOV-81','%d-%M-%y'), 5000, null, 10),
(7844, 'TURNER', 'SALESMAN', str_to_date('08-SEP-81','%d-%M-%y'), 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', str_to_date('12-JAN-83','%d-%M-%y'), 1100, null, 20),
(7900, 'JAMES', 'CLERK', str_to_date('03-DEC-81','%d-%M-%y'), 950, null, 30),
(7902, 'FORD', 'ANALYST', str_to_date('03-DEC-81','%d-%M-%y'), 3000, null, 20),
(7934, 'MILLER', 'CLERK', str_to_date('23-JAN-82','%d-%M-%y'), 1300, null, 10);


select empno , ename from emp;

select * from emp where job in ('clerk','manager');
#or
select * from emp where job = 'clerk' or job = 'Manager';

#including king
select ename , job from emp where deptno = (select deptno from emp where ename = 'king');

#not including king
select ename , job from emp where deptno = (select deptno from emp where ename = 'king') and ename<>'KING';

select * from emp where month(hiredate) = 2;

select * from emp order by deptno desc;
 
select empno NUMBER,ename NAME from emp;
 
select ename from emp where day(hiredate) = day(last_day(hiredate));
 
select ename from emp where sal = (select max(sal) from emp);

select sum(sal) from emp where deptno = 10;

select * from emp where job like '%T';

/*---------------------------------------------------------------*/

delimiter //
create procedure convert_temp(F float)
begin
declare c float;
set c = (F-32)*(5/9);
insert into tempp values(c);
end;
//
delimiter ;

/*----------------------------------------------------------------*/

delimiter //
create procedure Num_cube(N int)
begin
select pow(N,3); 
end 
//
delimiter ;
