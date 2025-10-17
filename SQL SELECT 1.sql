use annapoorna;
create table detaals(hotelD int, branch varchar(39),manager varchar(50), Turnover int);
desc detaals;
alter table  detaals rename  to details;
desc details;
alter table details rename column hotelD to hotelID;
desc details;
insert into details(hotelID,branch,manager,Turnover) values(1223455667,"avinashi","deepak",1000000),
(1336689542,"saibaba colony","suresh",500000),
(1227892467,"ukkadam","Manikandan",700000),
(1245578663,"trichy","Anandhkumar",1000000);
desc details;
select * from details;
alter table details change column hotelID HotelID int;
select * from details;
alter table details change HotelID HOTELID bigint(44);
select * from details;
alter table details rename to DETAILS;
select * from DETAILS;
alter table DETAILS add column workers varchar(55);
select * from DETAILS;
alter table DETAILS modify column workers int;
desc DETAILS;
alter table DETAILS add column servants varchar(55) after workers;
select * from DETAILS;
alter table DETAILS add primary key(HotelID);
select * from DETAILS;
update DETAILS set workers=35 where HotelID=1223455667;
update DETAILS set workers=47 where HotelID=1227892467;
update DETAILS set workers=68 where HotelID=1245578663;
update DETAILS set workers=53 where HotelID=1336689542;
select * from DETAILS;
alter table DETAILS add primary key(HotelID,branch);
select * from DETAILS;
update DETAILS SET servants=15 where HotelID =1223455667 and branch="avinashi";
select * from DETAILS;
update DETAILS SET servants=20 where HotelID =1227892467 and branch="ukkadam";
update DETAILS SET servants=40 where HotelID =1245578663 and branch="trichy";
update DETAILS SET servants=36 where HotelID =1336689542 and branch="saibaba colony";
select * FROM DETAILS;
alter table DETAILS change column branch Branch varchar(55);
select * from DETAILS;
alter table DETAILS rename column manager to Manager;
alter table DETAILS rename column Turnover  to TURNOVER;
alter table DETAILS rename column workers to Workers;
alter table DETAILS rename column servants to Servants;
alter table DETAILS modify column Workers varchar(50) after Manager;
alter table DETAILS modify column Servants varchar(66) after Workers;
select * from DETAILS;
set sql_safe_updates=0;
update DETAILS set Branch = UPPER(Branch);
select * from DETAILS;
set sql_safe_updates =1;
update DETAILS set Manager=upper(Manager);
select * from DETAILS;
set sql_safe_updates=0;
update DETAILS set Manager=lower(Manager);
select * from DETAILS;
update DETAILS set Manager = upper(Manager);
set sql_safe_updates=1;
select HotelID from DETAILS;
select Branch, Turnover from DETAILS;
SELECT Branch as HOTELBRANCH, Turnover as PROFIT_OF_THE_DAY from DETAILS;
SELECT Workers as Working_staffs from DETAILS;
select * from DETAILS;
select * from DETAILS where Branch = "Avinashi";
select * from DETAILS where Branch="Avinashi" and Turnover >1100000;
select * from DETAILS where Branch="Avinashi" and Turnover >8000;
select * from DETAILS where Branch="Trichy" or Turnover > 1000000;
select * from DETAILS where Branch="ukkadam" or Turnover=1000000;
select * from DETAILS where Branch<> "Avinashi";
select * from DETAILS where Turnover<=700000;
select * from DETAILS where Turnover<=700000 and Turnover=500000;
select* from DETAILS Where Branch in ("Avinashi","Trichy");
select * from DETAILS;
select * from DETAILS where branch="ukkadam" and workers=47 and Turnover<=1000000;
select * from DETAILS where manager ="deepak" or manager="manikandan" or manager!="anandhkumar";
select * from DETAILS where manager in ("deepak","manikandan") or manager<>"suresh";
select * from DETAILS where manager not in("deepak");
select * from DETAILS limit 2;
select * from DETAILS order by Turnover asc limit 3; 
select * from DETAILS order by Turnover desc limit 3;
select Workers from DETAILS order by Workers desc limit 1 offset 1;


















