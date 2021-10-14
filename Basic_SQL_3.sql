
#constraints

# 1) not null
create table tnull(id int not null, name varchar(10));
desc tnull;

insert into tnull (name) values('bama'); #coz  of notnull this will show an error
insert into tnull values (1, 'obama');

select * from tnull;
# modifying tnull table which has not null to is null
alter table tnull modify id int null;
delete from tnull where name ='obama';

# 2)unique
create table brands (id int, name varchar(10) unique);
insert into brands values(1, 'addi'),(2, 'addi'); # this shows error bcoz names is given unique

# 3) default
create table tname (first varchar(10), last varchar(10) not null default 'kumar');
insert into tname  (first, last) values ('aditya', 'dhuri');
insert into tname (first) values ('arpit');
insert into tname (last) values ('man');
select * from tname;

# 4) check 
create table tage (age int check (age>18));
insert tage values(15);
insert tage values(18);
insert tage values(19);
select * from tage;
desc tage;

# 5) Primary key
create table fauthor (id int primary key, name varchar(10));
desc fauthor;

# 6) foreign key
create table fbook (bookid int primary key, title varchar(25), id int, foreign key(id) references fauthor(id));
desc fbook;

insert into fbook values (1,'lmn',1);
insert into fauthor values (1, 'ganesha');
insert into fbook values (1, 'bharata',1);
select * from fauthor;
select * from fbook;

insert into fauthor values (2, 'bharti'),(3, 'mangesh');
insert into fbook values (2, 'mango',2),(3, 'banana',3);

update fbook set bookid = id*10;

# using all constraints

create table student3 (s_id int primary key, name varchar(15));
insert into student3 values (1,'man'),(2,'women');
select * from student3;

create table ttable (id int primary key, name varchar(15) not null default 'kumar' , age int check (age>18), loc_id int , foreign key(loc_id) references student3(s_id) on delete cascade);
insert into ttable values(10, 'adi' ,22 , 1);
insert into ttable (id, age, loc_id) values (20,22,2);
select * from ttable;

select s.s_id, s.name, n.id, n.name, n.age from student3 s inner join ttable n where s.s_id=n.loc_id;

# to remove not null
alter table ttable modify column name varchar(15) null;

# to remove foreign key or primary key
show create table ttable;
alter table ttable drop constraint ttable_ibfk_1;
alter table ttable drop primary key;

alter table ttable add constraint mycon unique(name);
alter table ttable drop constraint mycon;


select * from student where salary >=(select max(salary) from student);






