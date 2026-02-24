use college;
create table update1(
nom int not null primary key,
name varchar(10),
age int);

insert into update1 values (1,"monish",0),(2,"puneeth",0),(3,"manish",21);
select * from update1;
update update1 set age=21 where age=0;
select * from update1;
update update1 set age=22 where name="puneeth";
update update1 set age=age+1;

create table delete1(
nom int not null primary key,
name varchar(10),
age int);
insert into delete1 values (1,"monish",0),(2,"puneeth",0),(3,"manish",21);
delete from delete1 where age=0 or age =21;
select * from delete1;