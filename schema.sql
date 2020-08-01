--creating the database
create database truyum

--creating the Table for Menu_items
create table Menu_items
(
	id int not null primary key(id),
	Name varchar(max),
	Price money,
	Active char(3),
	Date_Of_Launch date,
	Category varchar(max),
	Free_delivery char(3),
	Actions varchar(max)
)
go

--create customer table
create table Customer
(
	customer_name varchar(max),
	customer_id int primary key(customer_id),
	customer_phoneNo bigint
)
go

--creating the cart table
create table Cart 
(
	product_id int foreign key references Menu_items(id),
	CustomerId int foreign key references Customer(customer_id)
)
go
