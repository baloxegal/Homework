use Univercity
alter table performance
add constraint fk_course foreign key (course) references course(id)

use Univercity
alter table performance alter column course int null

alter table performance alter column course int not null

alter table course alter column name int not null

insert into student
values('Ion')

select * from student

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

select * from course

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
