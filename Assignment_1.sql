CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');



#Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select FIRST_NAME as WORKER_NAME from Worker;


#Write an SQL query to fetch unique values of DEPARTMENT from the Worker table
select distinct DEPARTMENT from Worker;

#Write an SQL query to print the first three characters of FIRST_NAME from the Worker Table,
select substr(FIRST_NAME,1,3) from Worker;

#Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length
select distinct DEPARTMENT, length(DEPARTMENT) as Length from Worker;

#Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending
select * from Worker order by FIRST_NAME asc, DEPARTMENT desc;

# Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from Worker where DEPARTMENT = 'Admin';

#Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000
select * from Worker where SALARY between 100000 and 500000;

#Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
select CONCAT(FIRST_NAME,' ',LAST_NAME) as Worker_Name from Worker where SALARY >= 50000 or SALARY <= 100000;

#Write an SQL query to show  only even rows from the WORKER table
#Note - the question does not make sense as row are stored in rdbms database are not stored in any particular order, but i have made an
#assumption that they are stored ascending order by WORKER_ID
select * from Worker where WORKER_ID % 2 = 0;

#Write an SQL query to print details of the Workers who joined in Feb’2014
select * from Worker where extract(month from JOINING_DATE) = 2 and extract(year from JOINING_DATE) = 2014;
