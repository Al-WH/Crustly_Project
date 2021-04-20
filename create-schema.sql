set foreign_key_checks = 0;
drop table if exists Customers;
drop table if exists Orders;
drop table if exists Cookies;
drop table if exists Pallets;
drop table if exists Recipes;
drop table if exists Rawmaterials;


Create table Customers(
customerName varchar(50) primary key,
customeradress varchar(50)
);

Create table Orders (
orderNbr integer primary key auto_increment ,
orderDate date,
delivered tinyint,
customerName varchar(50),
foreign key (customerName) references Customers(customerName)



);

create table Pallets (
palletNbr integer auto_increment primary key,
productionDate Date not null,
Delivered Date,
Blocked tinyint not null,
Location varchar (255) not null,
cookiesName varchar(50),
orderNbr int,
foreign key  (cookiesName) references Cookies (cookiesName),
foreign key  (orderNbr) references Orders (orderNbr)

);

create table Cookies (
cookiesName varchar(50) primary key

);

create table RawMaterials (
materialName varchar(50) primary key,
amount int,
unit varchar (50),
lastdelevired_Date Date,
lastdelevired_Amount int

);

create table Recipes(

cookiesName varchar (50)   ,
materialName varchar (50)   ,
amount int ,
foreign key (cookiesName) references Cookies (cookiesName),
foreign key (materialName) references RawMaterials (materialName),
primary key ( cookiesName, materialName)

);
set foreign_key_checks = 1;
