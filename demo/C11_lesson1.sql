
create database c11_student;

use c11_student;
create table mon_hoc(
	ma_mh int,
    ten_mh varchar(255),
    so_tc int
);

insert into mon_hoc(ma_mh,ten_mh,so_tc)
values (1,'Hoa',3);

select * from mon_hoc;
select ten_mh,so_tc from mon_hoc;

insert into mon_hoc(ma_mh,ten_mh,so_tc)
values 
(2,'Toan',3),
(3,'Ly',3),
(4,'Sinh',3);

update mon_hoc
set so_tc = 122
where so_tc = 5;

delete from mon_hoc
where ten_mh = 'Sinh';

alter table mon_hoc
add column hoc_phi int;

drop table mon_hoc;

drop database c11_student;