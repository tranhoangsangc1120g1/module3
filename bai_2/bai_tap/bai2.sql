drop database if exists ngay2_bai2;
create database ngay2_bai2;
use ngay2_bai2;
create table productlines(
productLine varchar(50) primary key,
textDescription text ,
image varchar(255) not null
); 
create table offices(
officeCode varchar (10) primary key,
city varchar (50) not null,
phone varchar (50) not null,
addressLine1 varchar (50) not null,
addressLine2 varchar (50) not null,
state varchar (50) not null,
country varchar (50) not null,
postalCode varchar (15) not null
);
create table employees (
employeeNumber int primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null,
reportTo int not null,
foreign key (reportTo) references employees(employeeNumber),
officeCode varchar (10) not null,
foreign key (officeCode) references offices(officeCode)
);
create table Customers(
customernumber int primary key,
customerName varchar (50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50)  ,
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit double ,
salesRepEmployeeNumber int not null ,
foreign key (salesRepEmployeeNumber) references employees(employeeNumber)
);
create table orders(
orderNumber int primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date not null,
status text(15) not null ,
comments text(15)  ,
quantityOrdered int not null,
priceEach double not null,
customernumber int not null,
foreign key (customernumber) references customers(customernumber)
);
create table payments(
customerNumber int not null,
foreign key (customerNumber)  references customers(customerNumber),
checkNumber varchar(50) not null,
paymentDate date not null,
amount double  not null
);
create table products (
productCode varchar(15) primary key ,
productName varchar(70) not null,
productScale varchar(70) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice double not null,
MSRP double not null,
ProductLine varchar (50) not null,
foreign key (ProductLine) references productlines(ProductLine)
);
create table OrderDetails (
 orderNumber int not null,
 productCode  varchar(15) not null
);


