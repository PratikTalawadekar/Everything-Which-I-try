create database mySSql;

use mySSql;

drop database mySSql;

show databases;

create table student_table (
student_id INT,
student_name VARCHAR (100),
course_name VARCHAR (40)
);

show tables;

describe student_table;

alter table student_table add email varchar(100);

TRUNCATE TABLE student_table;

