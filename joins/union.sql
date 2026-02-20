create table cse(
id int,
name varchar(20),
dept varchar(20));
insert into cse values (1,"a","cse"),(2,"b","cse");
select * from cse;


create table ece(
id int,
name varchar(20),
dept varchar(20));
insert into ece values (1,"c","ece"),(2,"d","ece");
select * from ece;

select id,name from cse
union
select id,name from ece;