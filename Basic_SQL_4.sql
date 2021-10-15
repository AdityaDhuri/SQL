# using joins 

create table student2(s_id int, location varchar(20));
show tables;
select * from student2;
insert into student2 values (1 , 'USA'), (2, 'USA'), (3, 'Delhi'), (4, 'Goa'), (5,'Goa');
insert into student2 values (7, 'Pune');

# inner join
select s.s_id, s.name, n.location, s.age from student s inner join student2 n on s.s_id=n.s_id;

# using where clause frothe same inner join
select s.s_id, s.name, n.location, s.age from student s , student2 n where s.s_id=n.s_id;

# using left join/ left outer join
select s.s_id, s.name, n.location, s.age from student s left join student2 n on s.s_id=n.s_id;

select s.s_id, s.name, n.location, s.age from student s left outer join student2 n on s.s_id=n.s_id;

# using right/right outer join
select s.s_id, s.name, s.age, n.location from student s right join student2 n on s.s_id=n.s_id; 

select s.s_id, s.name, s.salary, n.location from student s right outer join student2 n on s.s_id=n.s_id;






