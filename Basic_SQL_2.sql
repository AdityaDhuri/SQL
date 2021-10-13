use  mytest;

# use of where , order by clause;

select * from student;
select distinct subject from student;
select distinct sex, subject from student;
select * from student where sex='F' and subject='maths';
select * from student where sex='F' or subject='maths';
select * from student where s_id in (2,4);
select * from student where subject like ('maths%');
select * from student where subject like ('_h%');
select * from student order by subject;
select * from student order by s_id desc;