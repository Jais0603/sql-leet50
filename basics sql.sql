show databases;
use mysql;
show tables;
select *from city;

create database sql_intro;
show databases;

create table emp_details(
Name varchar(50) not null,
Age int (10),
gender char(20),
Address varchar(20),
city varchar(30),
state char(10),
salary float,
phone_no int(20) not null
);

desc emp_details;

insert into emp_details values
('sj', '20', 'F', 'Delhi', 'DC','Delhi','200000', '7987'),
('aj', '30', 'F', 'Punjab', 'PC','Delhi','90000', '7957'),
('rj', '28', 'M', 'Kashmir', 'FC','Delhi','80000', '7127'),
('tj', '29', 'M', 'Bihar', 'MC','Delhi','28000', '7637'),
('hj', '26', 'F', 'Goa', 'BC','Delhi','60000', '7987'),
('mj', '25', 'M', 'Mumbai', 'PC','Delhi','80000', '7327');

select *from emp_details;

select distinct address from emp_details;

select count(name) as count_name from emp_details;

select sum(salary) from emp_details;

select avg(salary) from emp_details;

select max(salary) from emp_details;

select Name, age, salary from emp_details;

select * from emp_details where age>25;

select name, age, salary, city from emp_details where gender='M';

select * from emp_details where 
address='kashmir' or address= 'delhi';

select * from emp_details where
address in ('bihar' , 'kashmir');

select * from emp_details where
age between '20 ' and '25';

select * from emp_details where 
salary between '20000' and '60000';

select gender, sum(salary) as total_salary 
from emp_details group by gender;

select * from emp_details order by salary desc;

select ( 10+40) as addition;

select (20-90) as subtract;

select length('sakshi jaiswal')as total_len;

select repeat('@' , 30);

select upper('sakshi jaiswal');

select lower('JAIS');

select curdate();

select day(curdate());

# string functions

select upper('sakshi jaiswal')as upper_case;

select lower('sakshi jaiswal')as lowerr_case;

select character_length('sakshi jaiswal') as total_len;

select concat("my " , "name" , " is" , " sakshi");

select reverse(' sakshi jaiswal');

select reverse (Name) from emp_details;

select replace ("Orange is a vegetable" , "vegetable", "fruit");

select length("        Sakshi jaiswal ");
select ltrim ("        SAkshi jaiswal ");
select rtrim(" Sakshi jaiswal              ");

#select position ("fruit" in "Orange is a fruit") as name;

select ascii('a');

Select ascii('A');



# GROUP BY CLAUSE


USE sql_intro;
create table employees(
Emp_id int primary key,
Emp_name varchar (30),
Age int,
Gender char(1),
Doj date,
Dept varchar(20),
City varchar(50),
Salary varchar(50)
);

desc employees;

-- Inserting data into the employees table
INSERT INTO employees (Emp_id, Emp_name, Age, Gender, Doj, Dept, City, Salary)
VALUES
    (1, 'John Smith', 30, 'M', '2020-05-15', 'IT', 'New York', '60000'),
    (2, 'Emily Johnson', 28, 'F', '2019-11-20', 'HR', 'Los Angeles', '55000'),
    (3, 'Michael Williams', 35, 'M', '2018-03-10', 'Finance', 'Chicago', '70000'),
    (4, 'Jessica Brown', 24, 'F', '2022-02-08', 'Marketing', 'Houston', '50000'),
    (5, 'Robert Davis', 32, 'M', '2017-09-05', 'Operations', 'Miami', '62000'),
	(6, 'Sarah Anderson', 29, 'F', '2021-07-12', 'IT', 'San Francisco', '58000'),
    (7, 'William Jackson', 27, 'M', '2020-03-25', 'HR', 'Seattle', '54000'),
    (8, 'Jennifer Martinez', 31, 'F', '2018-09-18', 'Finance', 'Boston', '72000'),
    (9, 'David Taylor', 33, 'M', '2019-05-02', 'Marketing', 'Atlanta', '51000'),
    (10, 'Amanda Miller', 26, 'F', '2022-01-10', 'Operations', 'Dallas', '63000'),
    (11, 'Daniel Garcia', 30, 'M', '2021-11-08', 'IT', 'Denver', '61000'),
    (12, 'Melissa Lee', 28, 'F', '2020-08-14', 'HR', 'Phoenix', '56000'),
    (13, 'James Wilson', 34, 'M', '2017-12-03', 'Finance', 'Philadelphia', '69000'),
    (14, 'Stephanie Harris', 25, 'F', '2023-03-20', 'Marketing', 'San Diego', '52000'),
    (15, 'Christopher Clark', 31, 'M', '2019-02-15', 'Operations', 'Austin', '64000'),
    (16, 'Rachel Thompson', 27, 'F', '2022-06-28', 'IT', 'Houston', '59000'),
    (17, 'Thomas Rodriguez', 29, 'M', '2021-04-17', 'HR', 'Los Angeles', '55000'),
    (18, 'Rebecca Scott', 32, 'F', '2019-08-09', 'Finance', 'Chicago', '71000'),
    (19, 'Joseph Turner', 28, 'M', '2020-01-23', 'Marketing', 'New York', '53000'),
    (20, 'Laura White', 30, 'F', '2018-11-15', 'Operations', 'Dallas', '65000'),
    (21, 'Kevin Martinez', 33, 'M', '2017-07-09', 'IT', 'San Francisco', '60000'),
    (22, 'Catherine Hall', 26, 'F', '2023-02-05', 'HR', 'Seattle', '56000'),
    (23, 'Andrew Davis', 29, 'M', '2022-09-18', 'Finance', 'Boston', '73000'),
    (24, 'Julia Adams', 31, 'F', '2020-04-03', 'Marketing', 'Atlanta', '54000'),
    (25, 'Mark Martinez', 28, 'M', '2019-01-10', 'Operations', 'Phoenix', '66000');


select *from employees;

select distinct city from employees;

select distinct dept from employees;

select avg(age) from employees;

select avg (salary) from employees;

# avg age in each dept;

select dept, avg(age) from employees 
group by dept;

select dept , sum(salary) as total_salary from employees 
group by dept;

select count(emp_id), city from employees
group by city
order by count(emp_id) desc;

select year (doj) as year, count(emp_id)
from employees
group by year (doj);


create table sales( 
Product_id int,
sell_price float,
quantity int,
state varchar(30)
);

INSERT INTO sales (Product_id, sell_price, quantity, state)
VALUES
    (101, 25.99, 50, 'California'),
    (101, 49.99, 30, 'New York'),
    (101, 15.49, 75, 'Texas'),
    (102, 9.99, 100, 'Florida'),
    (103, 79.99, 20, 'Illinois'),
    (102, 34.99, 40, 'Pennsylvania'),
    (103, 12.99, 60, 'Georgia'),
    (104, 64.99, 25, 'Ohio'),
    (104, 7.99, 90, 'Michigan'),
    (102, 42.99, 35, 'North Carolina');
    
    select * from sales;
    
    select product_id, sum(sell_price* quantity) as revenue
    from sales group by product_id;

	create table c_product(
    product_id int,
    cost_price float);
    
    insert into c_product (product_id, cost_price)
    values
    (101, 20),
    (102, 30),
    (103, 50),
    (104, 30),
    (105, 25),
    (106, 30),
    (107, 20),
    (108, 60),
    (109, 30),
    (110, 70);
    select* from c_product;
    
    select product_id (sum(
    (sell_price - cost_price))* quantity)
    from sales as s inner join c_product as c
    where product_id= product_id
    group by product_id;
    
    
    select * from employees; 
    
    select dept , avg(salary) as avg_salary
    from employees
    group by dept
    having avg(salary)>$40000;
    
    
    select dept,count(*) as emp_count
    from employees
    where city != "Houston"
    group by city
    having count(*)>2;
    
    
    # SQL JOINS
    
    create table orders(
    order_id int primary key,
    order_date date,
    Shipped_date date,
    product_name varchar(30),
    StatusOf_delivery varchar(30),
    Quantity varchar(20),
    priceOfProduct varchar (100)
    );
 create table customers(
 order_id int primary key,
 customer_id int,
 phone_number text,
 customerName varchar(50),
 address varchar(30)
 );
 
 
 create table cricket(
 cricket_id int auto_increment ,
 name varchar(50),
 primary key(cricket_id)
);

create table football(
 football_id int auto_increment ,
 name varchar(50),
 primary key(football_id)
 );
 
insert into cricket (name) values
('Amit'), ('Puneet'), ('john'),('Keshav'),('rohit'),
('sobit'), ('rohit'),('kriti'), ('pooja');

select* from cricket ;
 
 
  insert into football (name) values
('ramit'), ('suneet'), ('johnny'),('Keshav'),('mohit'),
('mohit'), ('Sohit'),('sanskriti'), ('alopooja'),  
    ('puneet') ,('rohit'), ('kriti');
    
    
    select* from football;
    
    #inner join
    select * from cricket as c inner join
    football as f on c.name=f.name;
    
    
    