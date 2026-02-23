use joins;

create table cj(
id int primary key,
name varchar(20));
insert into cj values (1,"monish"),(2,"puneeth");
select * from cj;

create table cj1(
city varchar(20));
insert into cj1 values ("bengaluru"),("mysore");
select * from cj1;

select * from cj cross join cj1 order by id asc;
select name,city from cj cross join cj1;

