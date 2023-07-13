create table if not exists student(
rollNo varchar(10) primary key not null,
course varchar(10) not null,
name varchar(100) not null,
gender varchar(10) not null,
fatherName varchar(100),
branch varchar(50)
);

create table if not exists result(
rollNo varchar(10) primary key not null,
sub1 int(3),
sub2 int(3),
sub3 int(3),
sub4 int(3),
sub5 int(3),
sub6 int(3),
sub7 int(3));

select * 
from student inner join result 
where student.rollNo=result.rollNo and student.rollNo=1001;

select * from student 
where rollNo= '" + searchStudent + "';

select * from student 
where rollNo= '" + searchResult + "';