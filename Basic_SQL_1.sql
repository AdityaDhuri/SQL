# DDL statements

create database mytest;
show databases;
use mytest;
show tables;
create table student_id(s_id int, name char(30), age int);
show tables;
describe student_id;
insert into student_id values (1, 'Tom', 32);
select * from student_id;
insert into student_id values (2, 'Tony', 33);
select * from student_id;
create table if not exists student_id;
create table timetab (doj datetime, toj timestamp);
desc timetab;
insert into timetab values('2015-01-22 11:11:11', '2016-02-02 10:30:00');
select * from timetab;
insert into timetab values ('2017-11-11 11:11:11', now());
rename table student_id to student;
alter table student add column sex varchar(10);
select * from student;
alter table student modify column sex char(10);
alter table student add column subject varchar(20) default 'physics';
drop table timetab;
