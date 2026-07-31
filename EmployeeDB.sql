create database Employee;
use Employee;

CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);
 
 INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));

CREATE TABLE Address
(
AddressId INT PRIMARY KEY AUTO_INCREMENT,
EmployeeId INT,
Country VARCHAR(50),
State VARCHAR(50),
City VARCHAR(50)
);

INSERT INTO Address (EmployeeId, Country, State, City) Values (1001, 'India', 'Odisha', 'BBSR');

INSERT INTO Address (EmployeeId, Country, State, City) Values (1002, 'India', 'Maharashtra', 'Mumbai');

INSERT INTO Address (EmployeeId, Country, State, City) Values (1003, 'India', 'Maharashtra', 'Pune');

INSERT INTO Address (EmployeeId, Country, State, City) Values (1004, 'India', 'Odisha', 'Cuttack');

INSERT INTO Address (EmployeeId, Country, State, City) Values (1005, 'India', 'Maharashtra', 'Nagpur');

INSERT INTO Address (EmployeeId, Country, State, City) Values (1006, 'India', 'Odisha', 'Cuttack');

select * from Employee;
select * from Projects;
select * from Address;

desc Employee;
desc Projects;
desc Address;

ALTER TABLE Employee add Location varchar(50);

alter table Employee add Serial_No varchar(50) first; 

alter table Employee add Title varchar(50) AFTER EmployeeID;

select * from Employee;

alter table Employee DROP Location;

select * from Employee;

alter table Employee DROP Serial_no, drop Title;

select * from Employee;

alter table Employee modify fullname varchar(55) unique;

alter table Employee change column Department DEPT VARCHAR(40);

select * from Employee;

select * from Projects;

truncate table projects;

select * from Projects;

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));

select * from Projects;


delete from Projects where ProjectId=1;
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY));

select * from Projects;

create table simple
(ID INT primary key auto_increment,
remarks varchar(20)
);

insert into simple(remarks) values


select now();

select * from Projects;


select now();

select * from Employee;

ALTER TABLE Employee add Location varchar(50);

select * from Employee;

update Employee set location = "Thane";

select * from Employee;

update Employee set location = "Thane";

select * from Employee;


select * from Employee;

use Employee;

select * from Employee;

show tables;

select * from Employee;

update Employee set Title ="Mr.";

alter table Employee add Title varchar(4);

update Employee set Title ="Mr.";


update Employee set Title ="Mrs." where gender ="Female";

update Employee set salary =55000 where fullname ="Mary Smith";

select * from Employee;

delete from Employee where EmployeeID =1010;

select * from Employee order by fullname desc;   -- desc means in Descending order ----

select * from Employee order by EmployeeID desc;

-- W G H O sequence --- WHERE --- GROUP BY --- HAVING --- ORDER BY ---

select * from Employee LIMIT 3;

select * from Employee order by fullname LIMIT 3;    -- limit --- is used omly in last of query -----


select * from Employee LIMIT 5,3;

select * from Employee LIMIT 2,5;

select * from Employee LIMIT 5 offset 2;     -- offset --- alternate method ---



select * from Employee where EmployeeID % 2 = 0;

select * from Employee where salary >50000;








-- use avg for average ----



select * from Projects;

-- used NULL and IS NOT Null comment-----

select * from Projects where employeeID IS NULL;

select * from Projects where employeeID IS not NULL;

-- GROUP BY Clause --

select * from employee;
select DEPT,count(dept) from employee group by DEPT;
select DEPT,count(fullname) from employee group by DEPT;
select DEPT,count(*) from employee group by DEPT;
select gender,count(*) from employee group by gender;

select * from employee;
select dept,sum(salary) from employee group by dept;
select dept,avg(age) from employee group by dept;

-- use TRUNCATE clause ---
select DEPT, truncate(avg(AGE),0) from EMPLOYEE group by DEPT;
select truncate(123.4567856,-2);









