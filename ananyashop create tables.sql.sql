   CREATE DATABASE ananyashop;
  
 USE ananyashop;
   
 create table customers(
 customer_id INT PRIMARY KEY auto_increment,
 NAME VARCHAR(100),
EMAIL VARCHAR(150) UNIQUE,
 CITY VARCHAR(50),
  SIGNUP_DATE DATE
 );
 CREATE TABLE products(
 product_id INT PRIMARY KEY AUTO_INCREMENT,
 product_name varchar(100),
category varchar(50),
 price decimal(10,2),
  stock INT
 );

 

CREATE TABLE orders1 (
 order_id INT PRIMARY KEY AUTO_INCREMENT ,
 customer_id INT,
 order_date DATE,
 order_status varchar(30),
 FOREIGN KEY (customer_id) references customers(customer_id)
 );
 
 CREATE TABLE order_item(
 order_item_id INT PRIMARY KEY AUTO_INCREMENT,
 order_id INT,
 product_id INT,
 quantity INT,
 FOREIGN KEY (order_id) references orders1 (order_id),
 FOREIGN KEY (product_id) REFERENCES products(product_id)
 );
 
 CREATE table payments(
 payment_id INT PRIMARY KEY AUTO_INCREMENT,
 order_id INT,
 payment_mode VARCHAR(30),
 amount DECIMAL(10,2),
 payment_date DATE,
 FOREIGN KEY (order_id) REFERENCES orders1 (order_id)
 );
 
 





