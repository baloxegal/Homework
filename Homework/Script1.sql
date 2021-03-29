use Homework

alter table performance
add constraint fk_course foreign key (course) references course(id)

alter table performance alter column course int null

alter table course alter column name int not null

alter table student add [group] int
alter table student add constraint FK_group foreign key ([group]) references [group](id)

insert into student
values('Ion')

select * from student

select * from stud_course


exec sp_rename 'group', 'groups'
exec sp_rename 'student.group', 'stud_group', 'Column'

exec sp_rename 'Student.stud_group', 'Stud_Group', 'Column'
exec sp_rename 'Student.name', 'Stud_Name', 'Column'
exec sp_rename 'Student.id', 'Id', 'Column'
exec sp_rename 'Stud_Course.student_id', 'Student_Id', 'Column'
exec sp_rename 'Stud_Course.course_id', 'Course_Id', 'Column'
exec sp_rename 'Course.id', 'Id', 'Column'
exec sp_rename 'Course.name', 'Course_Name', 'Column'


exec sp_rename 'performance.course', 'course_id', 'Column'

insert into student output inserted.id, inserted.name
values('Valera')

alter table course alter column name nvarchar(50)

alter table performance drop constraint PK__performa__3213E83FFF454E5A

alter table performance add constraint PK_performance primary key(student_id, course_id)

alter table performance drop constraint PK_performance

alter table performance add constraint PK_performance primary key (id, student_id, course_id)

insert into performance values (2, 4)

insert into course output inserted.id, inserted.name
values('Mathematics')

insert into course output inserted.id, inserted.name
values('Phisics')

update course
set name = 'Physics'
where name = 'Phisics'

select * from course order by id

select * from [group]

insert into [group] output inserted.id, inserted.Group_Name values ('Economics')
insert into [group] output inserted.id, inserted.Group_Name values ('Engineering')
insert into [group] output inserted.id, inserted.Group_Name values ('Contabilitate')
insert into [group] output inserted.id, inserted.Group_Name values ('Management')

select * from student

update student
set [group] = 4 where id = 1

update student
set [group] = 2 output inserted.[group] where id = 2

update student
set [group] = 2 output inserted.id, inserted.[name], inserted.[group] where id = 3

update student
set [group] = 2 where id = 4
select * from student

update student
set [group] = 9 where id = 8

select top(3) * from student

insert into stud_course values(8, 7)

SELECT student_id, course_id, count(*)
FROM stud_course
GROUP BY student_id, course_id
HAVING count(*) > 1

set rowcount 1
delete from stud_course
where student_id = 1 and course_id = 4

exec sp_rename 'course', 'Course'
exec sp_rename 'groups', 'Groups'
exec sp_rename 'stud_course', 'Stud_Course'
exec sp_rename 'student', 'Student'

select * from stud_course where student_id in(1, 5)

select s.name, c.name from stud_course as sc
join student as s on sc.student_id = s.id
join course as c on sc.course_id = c.id where s.id = 5
order by s.name, c.name

select student.[name], groups.[Group_Name] from student join groups on student.stud_group = groups.id order by student.name

alter table stud_course
drop constraint PK_performance

alter table stud_course
add constraint PK_stud_course primary key (student_id, course_id)

alter table stud_course
drop column id

insert into course
values('Society')

insert into course output inserted.id, inserted.name
values ('Economy')

insert into course (id, name) output inserted.id, inserted.name
values (1, 'Filology')

set IDENTITY_INSERT course on
set IDENTITY_INSERT course off

insert into course output inserted.id, inserted.name
values ('Development')

select * from performance

select s.name as student, c.name as course from performance as p inner join student as s on p.student_id = s.id inner join course as c on p.course_id = c.id
order by s.name

delete from performance where id in(6, 8)

delete from performance where id > 2 and id < 5

insert into performance
values(4, 4)

insert into performance
values(null, null)

select * from performance

select p.id, s.name, c.name from performance as p join student as s on p.student_id = s.id join course as c on p.course_id = c.id where p.id = 8

select p.id, s.name, c.name from performance as p right join student as s on p.student_id = s.id right join course as c on p.course_id = c.id

select p.id, s.name, c.name from performance as p full join student as s on p.student_id = s.id full join course as c on p.course_id = c.id

select p.id, s.name from performance as p right join student as s on p.student_id = s.id

select* from course

create table Marks
(
	Id int Primary key identity,
	Biology int,
	Design int,
	Development int,
	Economy int,
	Engineering int,
	Math int,
	Society int
)
alter table Marks
add constraint CH_Mark check (Biology > 0 and Biology <= 10 and Design > 0 and Design <= 10 and Development > 0 and Development <= 10
and Economy > 0 and Economy <= 10 and Engineering > 0 and Engineering <= 10 and Math > 0 and Math <= 10 and Society > 0 and Society <= 10)

insert into Marks values(9,8,6,7,8,10,10)

select * from Marks

alter table Student add Marks int
alter table Student add constraint FK_marks foreign key (Marks) references Marks(Id)

alter table Student add constraint c_unique unique (Marks)


update Student
set Marks = 8 where id = 8

select * from student

delete from Marks where id = 10

