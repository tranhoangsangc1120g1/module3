create database Demo;
use Demo;
create table products
(id int auto_increment primary key,
productCode varchar(50),
productName varchar(50),
productPrice int ,
productAmount int,
productDescription varchar(50),
productStatus varchar(50)
);
insert into products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
values('sv','chuppachup',1000,10,'keomut','ngon'),
('cv','chuppachup1',1000,20,'chanh','non'),
('svt','chuppachup2',2000,5,'quyt','gia'),
('sva','chuppachup3',3000,15,'cam','chin'),
('svab','chuppachup4',1000,1,'buoi','thoi'),
('svabc','chuppachup5',6000,50,'dao','sau'),
('svabcd','chuppachup6',7000,100,'man','hong');
select*from products;
create unique index productCode_index on products(productCode);
create index Composite_Index on products(productName,productPrice);
explain select productName,productPrice from products
where productName='chuppachup5';
                                          -- xoa index-- 
alter table products
drop index productCode_index;
                                          -- tao view-- 
create view Product
as
select productCode,productName,productPrice,productStatus from products;
select*from Product;


                                       -- them view-- 
update product
set productName='chit'
where productName='chuppachup3';
                                       -- xoa view-- 
drop view product;
                                      -- tao procedure-- 
DELIMITER $$
create procedure Product()
begin
select* from products;
end; $$
DELIMITER ;
call Product;

                                         -- them procedure-- 
DELIMITER $$
create procedure Them_procedure(in productCode varchar(50),in  productName varchar(50),in productPrice int,in productAmount int,in productDescription varchar(50),in productStatus varchar(50) )
begin
insert into products(productCode,productName,productPrice,productAmount,productDescription,productStatus)
values(productCode,productName,productPrice,productAmount,productDescription,productStatus);
select*from products;
end; $$
DELIMITER ;
call Them_procedure('vs99','traicay',10000,30,'xoai','chuachin');
											-- xoa procedure-- 
drop procedure Them_procedure;
                                            -- sửa procedure-- 
DELIMITER $$
create procedure Sua_procedure(in id_sanpham int, in ma_code varchar(50),in  Ten varchar(50),in Gia int,in So_luong int,in Mo_ta varchar(50),in Trang_thai varchar(50) )
begin
update products
set productCode=ma_code,productName=Ten,productPrice=Gia,productAmount=So_luong,productDescription=Mo_ta,productStatus=Trang_thai
where id=id_sanpham;
select*from products;
end; $$
DELIMITER ;
call Sua_procedure(3,'vs100','chethai',10000,30,'Suachua','tam on')


