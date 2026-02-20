create table demo(
id int primary key,
name varchar(20));

alter table demo drop column name;
select * from demo;
alter table demo add column name varchar(20) ;
alter table demo rename to basic;
alter table basic add column year int;
select * from basic;
alter table basic change column year age int not null;
alter table basic add column email text not null;
alter table basic modify column email varchar(30) unique;
insert into basic values (1,"monish",21,"monishgowda27@gmail.com");
truncate table basic;