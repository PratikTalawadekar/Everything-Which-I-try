-- PROJECT WALA 

CREATE DATABASE PROJECT;

CREATE TABLE DOCTORS_SECTION(
id int,       
Name varchar(50),    
Specilist  varchar(50),      
Timing     date,      
Qualification  varchar(25), 
Room_No int
);

CREATE TABLE PATIENT_SECTION (
id int,       
Name varchar(10),    
disease  varchar(50),      
gender varchar(8),      
ADMIT  varchar(25), 
STATUS VARCHAR(1),
AGE INT
);


CREATE TABLE MEDICINES_LIST(       
Name varchar(50),    
COMPANY  varchar(50),      
EXPIRY_DATE     date,      
COST int
);


CREATE TABLE LABORATORY_SECTION (
id int,       
FACILITIES varchar(50),    
COST int
);

CREATE TABLE HOSPITAL_FACILITY_SECTION (
HOSPITAL_FACILITY VARCHAR(15)
);

