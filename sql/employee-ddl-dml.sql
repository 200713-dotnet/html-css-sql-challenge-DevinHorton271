use master;
GO
create database EmployeeDb;
go
create schema Employee;
go
create table Employee.Employee
(
    EmployeeId int not null,
    FirstName nvarchar(100) not null, 
    LastName nvarchar(100) not null,
    SSN int not null primary key,
    DeptId int not null,
    contraint EmployeeId foreign key REFERENCES Employee.EmpDetails(EmployeeId),
    CONSTRAINT DeptId REFERENCES Employee.Department(DeptId),
);
create table Employee.EmpDetails
(
    EmployeeId int not null primary key,
    Salary int not null,
    [Address 1] nvarchar(100) not null,
    [Address 2] nvarchar(100) null,
    City nvarchar(100) not null,
    [State] nvarchar(100) not null,
    Country nvarchar(100) not null,
);

create table Employee.Department
(
    DeptId int not null primary key,
    [Name] nvarchar(100) not null,
    [Location] nvarchar(100) not null,
);