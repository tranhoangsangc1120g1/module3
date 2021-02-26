drop database if exists btngay3;
create database btngay3;
use btngay3;


create table student(
studentnumber varchar(15) primary key,
studentname varchar(50) not null,
address varchar(500) not null,
email varchar(50) not null,
image text not null,
phonenum varchar (25) not null
);
create table book(
booknumber varchar(15) primary key,
bookname varchar (255) not null,
publishingcompany varchar (255) not null,
author varchar (255) not null,
publishingyear date not null,
numbersofpublications int not null,
price double not null,
imagebook text not null
); 

create table BorrowOrder(
idborrowoder int auto_increment primary key,
booknumber varchar(15) not null,
foreign key (booknumber) references book(booknumber),
studentnumber varchar(15)  not null ,
foreign key(studentnumber) references student(studentnumber),
dateborrow date not null,
datereturn date not null,
daysoverdue int not null
);
create table statusbook(
idstatusbook int auto_increment primary key,
idborrowoder int not null,
foreign key (idborrowoder) references BorrowOrder(idborrowoder),
booknumber varchar(15) not null,
foreign key (booknumber) references book(booknumber),
statusbook varchar(255) not null
);
create table category(
idtypeofbook int auto_increment primary key,
typeofbook varchar (45) not null,
booknumber varchar(15) not null,
foreign key (booknumber) references book(booknumber)
);