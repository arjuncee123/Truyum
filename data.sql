set dateformat dmy
go

--inserting values into Menu_items table
insert into Menu_items values(1,'Sandwich',99.00,'Yes','15/03/2017','Main Course','Yes','Edit')
insert into Menu_items values(2,'Burger',129.00,'Yes','23/12/2017','Main Course','No','Edit')
insert into Menu_items values(3,'Pizza',149.00,'Yes','21/08/2017','Main Course','No','Edit')
insert into Menu_items values(4,'French fries',57.00,'No','02/07/2017','Starters','Yes','Edit')
insert into Menu_items values(5,'Chocolate Brownie',32.00,'Yes','02/11/2022','Dessert','Yes','Edit')
go

--viewing the items in the menulist table
select * from Menu_items

--inserting values into Customer Table
insert into Customer values('Abcd',1,9998887777)
insert into Customer values('Efgh',2,7778889999)
insert into Customer values('Ijkl',3,8889997777)
go

--viewing the items in the Customer table
select * from Customer

--to select all the available items
select * from Menu_items
where Active like 'Yes%' and Date_Of_Launch < getdate()

--to update the columns values based on the Menu Item Id
set dateformat dmy
update Menu_items
set Name = 'IceCream',Price='50.00',Active='Yes',Date_Of_Launch='17/07/2017',Category='Dessert',Free_delivery='No'
where id=1
go

--inserting values into Cart Table
insert into Cart values(4,2)
insert into Cart values(3,1)
insert into Cart values(2,1)
go

--to view the items in the Cart table
select * from Cart

select Name,Free_delivery,Price from Menu_items
join Cart on product_id=id

--to view the cart of a particular person
select Name,Free_delivery,Price from Menu_items
join Cart on product_id=id 
where CustomerId=2