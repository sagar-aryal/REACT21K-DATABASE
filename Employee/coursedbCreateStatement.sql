drop database if exists coursedb;
create database coursedb;

create table coursedb.course(
    courseID integer not null primary key,
    courseName varchar(45) not null,
    price integer not null,
    startDate date,
    endDate date
);

create table coursedb.student(
    studentID integer not null primary key,
    firstname VARCHAR(20) not null,
    lastname VARCHAR(30) not null
);

create table coursedb.courseParticipant (
    courseNumber integer not null,
    studentNumber integer not null,
    grade integer,
    PRIMARY KEY (courseNumber,studentNumber),
    FOREIGN KEY (courseNumber) REFERENCES coursedb.course(courseID),
    FOREIGN KEY (studentNumber) REFERENCES coursedb.student(studentID)
);

drop user if exists 'coursemaster'@'localhost';
create user 'coursemaster'@'localhost' identified by'secret';
grant ALL PRIVILEGES on coursedb.* to 'coursemaster'@'localhost';

insert into coursedb.course values(1,'Javascript',100,'2021-5-30','2021-6-30');
insert into coursedb.course values(2,'Javascript',100,'2021-8-1','2021-8-30');
insert into coursedb.course values(3,'Java',200,'2021-8-15','2021-10-15');
insert into coursedb.course values(4,'Python',50,'2021-5-30','2021-6-30');
insert into coursedb.course values(5,'SQL',300,'2021-10-30','2021-11-30');

insert into coursedb.student values(1,'Matt','River');
insert into coursedb.student values(2,'Leila','Hökki');
insert into coursedb.student values(3,'Jesse','River');

insert into coursedb.courseParticipant (courseNumber,studentNumber) values(1,1);
insert into coursedb.courseParticipant (courseNumber,studentNumber) values(1,2);
insert into coursedb.courseParticipant (courseNumber,studentNumber) values(1,3);
insert into coursedb.courseParticipant (courseNumber,studentNumber) values(4,1);
insert into coursedb.courseParticipant (courseNumber,studentNumber) values(4,3);
insert into coursedb.courseParticipant (courseNumber,studentNumber,grade) values(2,2,10);

