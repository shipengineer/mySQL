CREATE DATABASE sales;
USE sales;
CREATE TABLE IF NOT EXISTS SALESPEOPLE
 (snum INT PRIMARY KEY,
 sname VARCHAR(15),
city VARCHAR(20),
comm VARCHAR(5)
 );
 INSERT SALESPEOPLE(snum,sname,city,comm)
 VALUES (1001,'Peel','London''.12'),
 (1002,'Serres','San Jose','.13'),
 (1004,'Motika','London','.11'),
 (1007,'Rifkin','Barcelona','.15'),
 (1003,'Axelrod','New York','.10');
CREATE TABLE IF NOT EXISTS CUSTOMERS
(cnum INT PRIMARY KEY,
cname VARCHAR(15),
city VARCHAR(20),
rating INT,
snum INT);
INSERT CUSTOMERS(cnum,cname,city,rating,snum)
VALUES(2001,'Hoffman','London',100,1001),
(2002,'Giovanni','Rome',200,1003),
(2003,'Liu','San Jose',200,1002),
(2004,'Grass','Berlin',300,1002),
(2006,'Clemens','London',100,1001),
(2008,'Cisneros','San Jose',300,1007),
(2007,'Pereira','Rome',100,1004);
CREATE TABLE IF NOT EXISTS CUSTOMERS
SELECT 
	id AS 'id',
	CASE
		WHEN count_product <100 THEN 'Маленький заказ'
		WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
		WHEN count_product >300 THEN 'Большой заказ'
		ELSE 'Ошибка'
	END AS 'Тип заказа'
 FROM sales;


CREATE TABLE IF NOT EXISTS orders
 (id INT PRIMARY KEY AUTO_INCREMENT,
 employee_id VARCHAR(5) NOT NULL UNIQUE,
 amount FLOAT,
 order_status ENUM('OPEN','CLOSED','CANCELLED')
 );
 INSERT orders(employee_id,amount,order_status)
 VALUES ('e03',15.00,'OPEN'),
 ('e01',25.50,'OPEN'),
 ('e05',100.70,'CLOSED'),
 ('e02',22.18,'OPEN'),
 ('e04',9.50,'CANCELLED');
SELECT 
	id AS 'id',
	CASE
		WHEN order_status='OPEN' THEN 'Order is in open state'
		WHEN order_status='CLOSED' THEN 'Order is closed'
        WHEN order_status='CANCELLED' THEN 'Order is cancelled'
		ELSE 'Ошибка'
	END AS 'full_order_status'
 FROM orders;

 

 