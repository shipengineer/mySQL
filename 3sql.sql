
USE salesorderscustomers;
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
CREATE TABLE IF NOT EXISTS ORDERS
(onum INT PRIMARY KEY,
amt FLOAT,
odate DATE,
cnum INT,
snum INT);
 INSERT ORDERS(onum,amt,odate,cnum,snum)
 VALUES  (3001,18.69,'1990-10-03',2008,1007),
(3003, 767.19,'1990-10-03',2001,1001),
(3002,1900.10,'1990-10-03',2007,1004),
(3005,5160.45,'1990-10-03',2003,1002),
(3006,1098.16,'1990-10-03',2008,1007),
(3009,1713.23,'1990-10-04',2002,1003),
(3007,75.75,'1990-10-04',2004,1002),
(3008,4723.00,'1990-10-05',2006,1001),
(3010,1309.95,'1990-10-06',2004,1002),
(3011,9891.88,'1990-10-06',2006,1001);
SELECT city, sname, snum, comm FROM SALESPEOPLE; 
SELECT rating,cname FROM CUSTOMERS WHERE city='San Jose';
SELECT DISTINCT snum FROM ORDERS;
SELECT * FROM CUSTOMERS WHERE cname LIKE 'G%';
SELECT * FROM ORDERS WHERE amt>1000;
SELECT MIN(amt) FROM ORDERS;
SELECT * FROM CUSTOMERS WHERE rating>100 AND city!='Rome';

CREATE TABLE IF NOT EXISTS PESONAL
(id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20),
surname VARCHAR(20),
speciality VARCHAR(50),
seniority INT,
salary INT,
age INT);
INSERT PESONAL(name,surname,speciality,seniority,salary,age)
VALUES('Вася','Васькин','начальник',40,100000,60),
('Петя','Петькин','инженер',8,70000,30),
('Катя','Катькина','инженер',2,70000,25),
('Саша','Сашкин','рабочий',12,50000,35),
('Иван','Иванов','рабочий',40,30000,59),
('Петр','Петров','рабочий',20,25000,40),
('Сидор','Сидоров','рабочий',10,20000,35),
('Антон','Антонов','рабочий',8,19000,28),
('Юра','Юркин','рабочий',5,15000,25),
('Максим','Воронин','рабочий',2,11000,22),
('Юра','Галкин','рабочий',3,12000,24),
('Люся','Люськина','уборщик',10,10000,49);
SELECT salary FROM PESONAL ORDER BY salary ASC ;
SELECT  salary FROM PESONAL ORDER BY salary DESC;
SELECT  salary FROM PESONAL ORDER BY salary DESC LIMIT 5;
SELECT speciality,  SUM(salary) AS summary_salary  FROM PESONAL  GROUP BY speciality HAVING SUM(salary)>100000 ;
