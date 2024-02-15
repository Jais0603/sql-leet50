use alpha;

create table persons1(
person_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    gender CHAR(1)
);
desc person;
select version(),CURRENT_DATE(); -- to see the version installed and todays date

show databases; -- all databases in the MySQL schemas

create database test_schema;
drop database test_schema;

drop database test_schema;  -- this will give error because database doesn't exists.
drop database if exists test_schema; -- this will resolve the issue of the drop databse and will show a warning.

show tables;

create database test_schema;
use test_schema;


CREATE TABLE Offices (
`officeCode` varchar (10) NOT NULL,
`city` varchar (50) NOT NULL,
`phone` varchar (50) NOT NULL,
`addressLine1` varchar (50) NOT NULL,
`addressline2` varchar (50),
`state` varchar (50),
`country` varchar (50) NOT NULL,
`postalCode` varchar (15) NOT NULL,
`territory` varchar (10) NOT NULL,
PRIMARY KEY (`officeCode`)
);



insert into offices values
('officeCode' , 'city', 'phone','addressLine1', 'addressLine2', 'state', 'country', 'postalcode', 'territory')

('1', 'delhi', '7963741123', 'chandni chowk', 'NULL', 'delhi' , 'India', '897456','delhi');


