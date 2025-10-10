create database Accenture;
use Accenture;
create table Workers(id int, name varchar(50), role varchar(55), salry float, area varchar(40), doj date);
desc Workers;
insert into Workers(id, name, role,salry,area,doj) values(01,"harsha","data analyst",30000,"erode","2020/06/23");
select * from Workers;
insert into Workers values(102,"kani","assistant engineer",30000,"chennai","2025/02/07"),
(103,"srinavi","data scientist",50000,"cbe","2025/01/25"),
(104,"pranav","data scientist",50000,"banglore","2022/05/24"),
(105,"hari","system engineer",45000,"chennai","2025/03/17");
select * from Workers;
select * from Workers limit 5;
select role from Workers;

