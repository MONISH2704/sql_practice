create database tcl;
create table details(
id int primary key,
name varchar(20));



start transaction;
insert into details values (1,"a"),(2,"b");
select * from details;
savepoint test;
insert into details values (3,"c");
insert into details values (4,"d");
insert into details values (5,"e");
rollback to test;
commit;
