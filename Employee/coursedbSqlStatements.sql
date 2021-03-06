use coursedb;

show databases;
select * from course;
select * from student;
select * from courseParticipant;
select * from student join courseParticipant on studentID = studentNumber join course on courseID = courseNumber;
select courseName, firstname, lastname from student join courseParticipant on studentID = studentNumber join course on courseID = courseNumber;
select firstname, lastname from student join courseParticipant on studentID = studentNumber where grade is not null;
select firstname, lastname from student join courseParticipant on studentID = studentNumber where grade is null;
select distinct firstname, lastname from student join courseParticipant on studentID = studentNumber where grade is null;
select distinct lastname, firstname from student join courseParticipant on studentID = studentNumber where grade is null;
select courseName, count(studentNumber) as No_of_registered from course join courseParticipant on courseID=courseNumber group by courseName
order by No_of_registered desc, courseName asc;
select * from student, courseParticipant, course where studentID=studentNumber and courseID=courseNumber;
select * from student, courseParticipant, course where studentID=studentNumber and courseID=courseNumber and firstname="Matt" and lastname="River";
select firstname, lastname from student join courseParticipant on studentID=studentNumber where grade is not null;
select firstname, lastname from student join courseParticipant on studentID=studentNumber where grade is null;
select firstname, lastname, courseName, grade from student join courseParticipant on studentID=studentNumber join course on courseID=courseNumber where grade is not null;
select firstname, lastname, courseName, grade, endDate from student join courseParticipant on studentID=studentNumber join course on courseID=courseNumber where grade is null;
update courseParticipant set grade=7 where courseNumber=1 and studentNumber=1;
select * from courseParticipant;
update courseParticipant set grade=9 where courseNumber=4 and studentNumber=1;
select firstname, lastname, courseName, grade, endDate from student join courseParticipant on studentID=studentNumber join course on courseID=courseNumber where grade is not null;
select courseName, count(studentNumber) as "Number of registered" from course join courseParticipant on courseNumber=courseID group by courseName;
select courseName, count(studentNumber) as  NumberOfRegistered from course join courseParticipant on courseNumber=courseID group by courseName order by NumberOfRegistered asc;
select courseName, count(studentNumber) as  NumberOfRegistered from course left join courseParticipant on courseNumber=courseID group by courseId;
select courseName, count(studentNumber) as  NumberOfRegistered from course left join courseParticipant on courseNumber=courseID group by courseId order by NumberOfRegistered asc, courseName asc;
select courseName, courseId, count(studentNumber) as  NumberOfRegistered from course left join courseParticipant on courseNumber=courseID group by courseId order by NumberOfRegistered desc, courseName asc;
select courseName, day(startDate) as day from course;
select courseName, day(startDate) as day, month(startDate) as month, year(startDate) as year from course;
select locate('abc', 'xxabcxx');
select courseName from course where locate('Java', courseName)<>0; 
select courseName from course where locate('Java', courseName)=0;
select courseName from course where locate('Java', courseName)!=0;