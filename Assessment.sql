USE TOPS

create table salesman(
  salesman_id int PRIMARY KEY,
  name Varchar(20),
  city Varchar (20),
  commission DECIMAL(20,2)
  )

insert into salesman(salesman_id, name, city, commission) 
values (5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12)

Select * from salesman

create table customers(
  customer_id int PRIMARY KEY,
  customer_name Varchar(20),
  city Varchar (20),
  grade int,
  salesman_id int Foreign key references salesman(salesman_id)
  )

insert into customers(customer_id, customer_name, city, grade, salesman_id) 
values (3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzon', 'London', ' ', 5005)

Select * from customers

Select customers.customer_name, customers.City, salesman.commission, salesman.salesman_id
into newsales
from salesman
Left Join customers ON customers.salesman_id = salesman.salesman_id

select * from newsales