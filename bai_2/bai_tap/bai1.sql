drop database if exists baitap_2;
create database baitap_2;
use baitap_2;
--  khách hàng gồm customer_number (mã khách hàng), fullname (họ tên khách hàng), address (địa chỉ), email, phone (số điện thoại).
 create table customers(
 customer_number int(20) primary key ,
 fullname varchar(200) not null,
 address varchar(200) not null,
 email varchar(200) not null,
 phone int (10) not null
 );
 -- -- Bảng Accounts - tài khoản gồm account_number (số tài khoản), account_type (kiểu tài khoản), date (ngày mở tài khoản), balance (số dư).?-- 
 create table Accounts(
 account_number int primary key,
 account_type varchar(10) not null,
 open_date date not null,
 balance double ,
 customer_number int(20),
 foreign key (customer_number)
 references customers(customer_number)
 );
 -- Bảng Transactions - giao dịch gồm tran_number (mã giao dịch), account_number (số tài khoản giao dịch),
 -- date (thời gian giao dịch), amounts (số tiền giao dịch), descriptions (mô tả giao dịch).  
 create table Transactions(
 tran_number int primary key,
 account_number int not null,
 tran_time date not null,
 amounts double not null,
 descriptions varchar (255),
 foreign key (account_number) references Accounts(account_number)
 );