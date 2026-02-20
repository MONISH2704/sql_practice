
create table dept(
id int primary key,
name varchar(20)
);
insert into dept values (101,"cse"),(102,"ece");
update dept set id =105 where id=102;
select * from dept;

drop table teacher;
create table teacher(
id int primary key,
name varchar(20),
dept_id int,
foreign key (dept_id) references dept(id)
on delete cascade
on update cascade
);

insert into teacher values (1,"monish",101);
insert into teacher values (2,"puneeth",101);
insert into teacher values (3,"mayur",102);
select * from teacher;