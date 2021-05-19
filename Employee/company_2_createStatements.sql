drop database if exists companydb2;
create database companydb2;

use companydb2;

create table department(
    departmentId integer not null primary key,
    departmentName varchar(20) not null,
    departmentFloor varchar(15) not null
);

create table employee(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    salary decimal(6,2) not null,
    departmentNumber integer not null,
    foreign key (departmentNumber) references department(departmentId)
);

create table headOfDepartment(
    departmentId integer not null,
    employeeId integer not null,
    primary key(departmentId,employeeId),
    foreign key(departmentId) references department(departmentId),
    foreign key(employeeId) references employee(employeeId)
);

insert into department values(1,'ict', 'basement');
insert into department values(2, 'admin','top floor');
insert into department values(3,'secr','bunker');
insert into department values(4, 'maintenance','workshop');
insert into department values(5,'transportation','carage');

insert into employee values(1,'Mary','River',3000,1);
insert into employee values(2, 'Matt','River',4000,1);
insert into employee values(3, 'Amanda','Smith',7000,2);
insert into employee values(4, 'Joe', 'Doe',9000,3);
insert into employee values(5,'Vera','Jones',4000,2);
insert into employee values(6, 'Peter', 'Bond',6500,3);
insert into employee values(7, 'Layla','Driver',5000,5);

insert into headOfDepartment values(1,3);
insert into headOfDepartment values(2,3);
insert into headOfDepartment values(3,4);
insert into headOfDepartment values(4,4);
insert into headOfDepartment values(5,3);

-- drop user if exists 'bigboss'@'localhost';
create user if not exists 'bigboss'@'localhost' identified by 'secret';

grant all privileges on companydb2.* to 'bigboss'@'localhost';

