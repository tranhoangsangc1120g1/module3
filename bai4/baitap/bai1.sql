drop database if exists bai4;
create database bai4;
use bai4;
create table hocvien(
id int  auto_increment primary key  ,
ten varchar(255) not null,
tuoi int not null,
khoahoc varchar(255) not null,
sotien double not null
);

insert into hocvien(ten,tuoi,khoahoc,sotien)
values('hoang',21,'cntt',400000),
('viet',19,'dtvt',320000),
('thanh',18,'ktdn',400000),
('nhan',19,'ck',450000),
('huong',20,'tcnh',500000),
('huong',20,'tcnh',200000);
select * from hocvien
where ten='huong';
 select ten,sum(sotien) from hocvien 
 where ten='huong';
 select distinct(ten) from hocvien;