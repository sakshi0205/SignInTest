create database capStore;
use capStore;



create table adminlogin(admin_Id int primary key auto_increment,name varchar(20),email varchar(30),password varchar(100),mobno varchar(20));
insert into adminlogin values(1,'mayank','mayank@gmail.com','1234','9803538343');
insert into adminlogin values(1,'mayank','mayank@gmail.com','$2a$10$xm6A5XLGYhONrXF0aaBBb.E27Z41yWCHF7u/duF/oJpm2//tLUYDS','9803538343');
drop table adminlogin;
select * from adminlogin;
truncate table adminlogin;
create table adminlogin(admin_Id int(11) primary key auto_increment,name varchar(20),email varchar(30),password varchar(100),mobno varchar(20));

insert into adminlogin values(2,'mayank','mayank@gmail.com','xeGGw+7a9/rRrt5FogXLqQ==','9803538343');


CREATE TABLE customer(
  customer_id int(25) PRIMARY KEY auto_increment,
  name varchar(50) Not NULL,
  email varchar(50) NOT NULL,
  password varchar(20) NOT NULL,
  address varchar(50) NOT NULL,
  mobile_no varchar(12) NOT NULL,
  gender varchar(10) Not NULL
);

select * from customer;

drop database capstore;





create database capStore;
use capStore;
create table merchant(merchant_Id bigint primary key auto_increment,merchant_Name  varchar(40) not null, merchant_Type varchar(15) not null, phone_No varchar(10) not null, email varchar(50) not null,password varchar(15),govt_Proof_Type  varchar(10),govt_Proof varchar(16));
insert into merchant values(1001,"Raju Enterprises","Direct","1234567890","raju@gmail.com","raju1234","Adhaar","1234567898745632");
insert into merchant values(1002,"Raju Enterprises","Direct","1234567890","raju@gmail.com","raju1234","Adhaar","1234567898745632");
insert into merchant values(1003,"Raju Enterprises","Direct","1234567890","raju@gmail.com","raju1234","Adhaar","1234567898745632");

create table adminlogin(admin_Id int primary key auto_increment,name varchar(20),email varchar(30),password varchar(30),mobno varchar(20));
insert into adminlogin values(1,'mayank','mayank@gmail.com','1234','9803538343');
drop table adminlogin;
select * from adminlogin;

CREATE TABLE customer(
  customer_id int(25) PRIMARY KEY auto_increment,
  name varchar(50) Not NULL,
  email varchar(50) NOT NULL,
  password varchar(20) NOT NULL,
  address varchar(50) NOT NULL,
  mobile_no varchar(12) NOT NULL,
  gender varchar(10) Not NULL
);

CREATE TABLE customer_orders (
  
  customer_id int NOT NULL references customer(customer_id),
  product_name varchar(20) NOT NULL,
  order_id  int primary key auto_increment,
  quantity int,
  amount double(10,2)
) ;

insert into customer values(1,'mayank','mayank@gmail.com','1234','amritsar punjab','9803538343','male');
insert into customer values(2,'joti','sadas@gmail.com','12344','Chennai Tamil Nadu','9815545843','female');

insert into customer_orders values(1,'shoes',3,50,255000);
insert into customer_orders values(1,'shoes',2,50,55000);
create table product(prod_Id bigint primary key auto_increment, prod_Name varchar(50) not null, prod_Price double(10,2) not null, prod_Quantity bigint not null, prod_Discount double(6,2) not null, prod_Category varchar(50) not null, prod_Desc varchar(500) not null, prod_Image varchar(150), merchant_Id bigint references merchant(merchant_Id));
insert into product values(164, 'Shorts', 20000, 5, 6, "Shorts", "Jockey", "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/1/012234_01.jpg", 1003);
insert into product values(45, 'Shorts', 20000, 5, 6, "Shorts", "Jockey", "https://images-na.ssl-images-amazon.com/images/I/91PCcXLqBoL._UX385_.jpg", 1001);
