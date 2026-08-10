show databases;
create database BankingDB;
use BankingDB;
show tableS;

Create table Customers
(
CustomerID INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
Phone VARCHAR(15),
AccountCreationDate Date
);
show tables;
drop table Customers;
show tables;
drop table customers;

select * from customers;
create table Accounts (
AccountID INT,
AccountType varchar(20),
Balance DECIMAL(10,2)
);

DEsc ACCOUNTS;
CREATE table Transactions (
 TransactionID INT,
 TransactionDate date,
 Amount decimal(10,2),
 TransactionType varchar (20)
 );
 show tables;
 CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);
 
 CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);

show tables;

create table Voter_list
(Voter_ID int,
Names varchar(30),
Age int check(Age>=18) );

desc Voter_list;
select * from Voter_list;
insert into Voter_list values 
(20067, "Pratiksha Patil",18);

create table Voter_list_2
(Voter_ID int,
Names varchar(30),
Age int check(Age>=18), 
email_ID varchar(30) default "DUMMY@GMAIL.COM");

desc Voter_list_2;
select * from Voter_list_2;
insert into Voter_list_2 values 
(20067, "Pratiksha Patil",18, "pratikshapatil@gmail.com"),
(20068, "Anuja Patil",44,default);










