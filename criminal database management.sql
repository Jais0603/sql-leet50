use alpha;

#POLICESTATION TABLE

Create table Policestation(
stationID int primary key,
stationName varchar(200),
address varchar(200),
city varchar(100),
State varchar(50),
PhoneNo varchar(20),
email varchar(200),
chiefOfficer varchar(200),
officerCount int 
);

desc Policestation;

# OFFICERS TABLE

create table Officers(
OfficersID int primary key,
FirstName varchar(100) not null,
middleName varchar(100),
LastName varchar(100) not null,
position varchar(50),
Badgenumber varchar(50) unique,
department varchar(50),
stationID int,
foreign key(stationID) references Policestation(stationID)
);

desc Officers;

# CRIMINAL TABLE

CREATE TABLE Criminal (
    criminalID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    MiddleName VARCHAR(100),
    LastName VARCHAR(100) NOT NULL,
    Gender VARCHAR(1),
    DateOfBirth DATE,
    Nationality VARCHAR(50),
    Height FLOAT,
    Weight FLOAT,
    EyeColor VARCHAR(20),
    HairColor VARCHAR(20),
    TattoosAndScars TEXT,
    Address VARCHAR(200),
    City VARCHAR(100),
    State VARCHAR(50),
    ArrestDate DATE,
    ArrestingOfficerID INT,
    crime varchar(50),
    punishment text,
    FOREIGN KEY (ArrestingOfficerID) REFERENCES Officers(OfficersID)
);

desc Criminal;


# VICTIM TABLE

CREATE TABLE Victim (
    victimID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    MiddleName VARCHAR(100),
    LastName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Nationality VARCHAR(50),
    Address VARCHAR(200),
    City VARCHAR(100),
    State VARCHAR(50),
    PhoneNo VARCHAR(20),
    Email VARCHAR(200),
    IncidentDate DATE,
    ReportingOfficerID INT,
    CriminalID INT,
    crime_happened varchar(50),
    FOREIGN KEY (ReportingOfficerID) REFERENCES Officers(OfficersID),
    FOREIGN KEY (CriminalID) REFERENCES Criminal(criminalID)
  
);

desc victim;


# INSERTION INTO POLICESTATION TABLE


insert into Policestation(stationID, stationName, address,city, State,PhoneNo, email, chiefOfficer, officerCount) values
 
(101, 'Lucknow Central PS', '123 ABC Street', 'Lucknow', 'Uttar Pradesh', '1234567890', 'lucknow@ps.com', 'A. Singh', 50),
(102, 'Kanpur North PS', '456 XYZ Road', 'Kanpur', 'Uttar Pradesh', '9876543210', 'kanpur@ps.com', 'B. Sharma', 45),
(103, 'Agra City PS', '789 Main Avenue', 'Agra', 'Uttar Pradesh', '2345678901', 'agra@ps.com', 'P. Verma', 40),
(104, 'Varanasi Urban PS', '567 PQR Lane', 'Varanasi', 'Uttar Pradesh', '3456789012', 'varanasi@ps.com', 'S. Patel', 55),
(105, 'Allahabad Coastal PS', '789 LMN Road', 'Allahabad', 'Uttar Pradesh', '4567890123', 'allahabad@ps.com', 'R. Gupta', 35),
(201, 'Central Delhi PS', '123 ABC Street', 'New Delhi', 'Delhi', '1234567890', 'central.delhi@ps.com', 'A. Kumar', 40),
(202, 'North Delhi PS', '456 XYZ Road', 'New Delhi', 'Delhi', '9876543210', 'north.delhi@ps.com', 'B. Singh', 35),
(203, 'South Delhi PS', '789 Main Avenue', 'New Delhi', 'Delhi', '2345678901', 'south.delhi@ps.com', 'P. Chatterjee', 50),
(204, 'East Delhi PS', '567 PQR Lane', 'New Delhi', 'Delhi', '3456789012', 'east.delhi@ps.com', 'S. Das', 30),
(205, 'West Delhi PS', '789 LMN Road', 'New Delhi', 'Delhi', '4567890123', 'west.delhi@ps.com', 'R. Roy', 45),
(301, 'Ludhiana Central PS', '123 ABC Street', 'Ludhiana', 'Punjab', '1234567890', 'ludhiana@ps.com', 'A. Singh', 40),
(302, 'Amritsar North PS', '456 XYZ Road', 'Amritsar', 'Punjab', '9876543210', 'amritsar@ps.com', 'B. Sharma', 35),
(303, 'Jalandhar City PS', '789 Main Avenue', 'Jalandhar', 'Punjab', '2345678901', 'jalandhar@ps.com', 'P. Verma', 50),
(304, 'Patiala Urban PS', '567 PQR Lane', 'Patiala', 'Punjab', '3456789012', 'patiala@ps.com', 'S. Patel', 55),
(305, 'Mohali Coastal PS', '789 LMN Road', 'Mohali', 'Punjab', '4567890123', 'mohali@ps.com', 'R. Gupta', 30),
(401, 'Chennai Central PS', '123 ABC Street', 'Chennai', 'Tamil Nadu', '1234567890', 'chennai@ps.com', 'A. Kumar', 40),
(402, 'Bengaluru North PS', '456 XYZ Road', 'Bengaluru', 'Karnataka', '9876543210', 'bengaluru@ps.com', 'B. Singh', 35),
(403, 'Hyderabad City PS', '789 Main Avenue', 'Hyderabad', 'Telangana', '2345678901', 'hyderabad@ps.com', 'P. Chatterjee', 50),
(404, 'Thiruvananthapuram Urban PS', '567 PQR Lane', 'Thiruvananthapuram', 'Kerala', '3456789012', 'thiruvananthapuram@ps.com', 'S. Das', 30),
(405, 'Coimbatore Coastal PS', '789 LMN Road', 'Coimbatore', 'Tamil Nadu', '4567890123', 'coimbatore@ps.com', 'R. Roy', 45),
(501, 'Mumbai Central PS', '123 ABC Street', 'Mumbai', 'Maharashtra', '1234567890', 'mumbai@ps.com', 'A. Desai', 40),
(502, 'Ahmedabad North PS', '456 XYZ Road', 'Ahmedabad', 'Gujarat', '9876543210', 'ahmedabad@ps.com', 'B. Patel', 35),
(503, 'Panaji City PS', '789 Main Avenue', 'Panaji', 'Goa', '2345678901', 'panaji@ps.com', 'P. Naik', 50),
(504, 'Jaipur Urban PS', '567 PQR Lane', 'Jaipur', 'Rajasthan', '3456789012', 'jaipur@ps.com', 'S. Sharma', 30),
(505, 'Pune Coastal PS', '789 LMN Road', 'Pune', 'Maharashtra', '4567890123', 'pune@ps.com', 'R. Joshi', 45),
(601, 'Patna Central PS', '123 ABC Street', 'Patna', 'Bihar', '1234567890', 'patna@ps.com', 'A. Kumar', 40),    
(602, 'Gaya North PS', '456 XYZ Road', 'Gaya', 'Bihar', '9876543210', 'gaya@ps.com', 'B. Singh', 35),
(603, 'Muzaffarpur City PS', '789 Main Avenue', 'Muzaffarpur', 'Bihar', '2345678901', 'muzaffarpur@ps.com', 'P. Chatterjee', 50),
(604, 'Bhagalpur Urban PS', '567 PQR Lane', 'Bhagalpur', 'Bihar', '3456789012', 'bhagalpur@ps.com', 'S. Das', 30),
(605, 'Darbhanga Coastal PS', '789 LMN Road', 'Darbhanga', 'Bihar', '4567890123', 'darbhanga@ps.com', 'R. Roy', 45),
(701, 'Kolkata Central PS', '123 ABC Street', 'Kolkata', 'West Bengal', '1234567890', 'kolkata@ps.com', 'A. Ghosh', 40),
(702, 'Bhubaneswar North PS', '456 XYZ Road', 'Bhubaneswar', 'Odisha', '9876543210', 'bhubaneswar@ps.com', 'B. Mohapatra', 35),
(703, 'Guwahati City PS', '789 Main Avenue', 'Guwahati', 'Assam', '2345678901', 'guwahati@ps.com', 'P. Das', 50),
(704, 'Ranchi Coastal PS', '789 LMN Road', 'Ranchi', 'Jharkhand', '4567890123', 'ranchi@ps.com', 'R. Gupta', 45);



#INSERTION INTO OFFICERS TABLE


insert into Officers(OfficersID, FirstName, middleName, LastName, position,Badgenumber,department,stationID)values
(1001, 'Rajesh', 'Kumar', 'Verma', 'Inspector', 'BIH001', 'Criminal Investigation', 604),
(1002, 'Priya', 'Devi', 'Sharma', 'Sergeant', 'BIH002', 'Traffic Control', 605),
(1003, 'Amit', 'Raj', 'Singh', 'Constable', 'BIH003', 'Patrol', 601),
(1004, 'Sneha', 'Kumari', 'Gupta', 'Detective', 'BIH004', 'Criminal Investigation', 602),
(1005, 'kriti', 'raj', 'sinha', 'Detective', 'BIH005', 'Criminal INvestigation', 601),
(1006, 'Amit', 'Kumar', 'Sharma', 'Inspector', 'UP001', 'Criminal Investigation', 105),
(1007, 'Priya', 'Singh', 'Yadav', 'Sergeant', 'UP002', 'Traffic Control', 102),
(1008, 'Rajesh', 'Prasad', 'Verma', 'Constable', 'UP003', 'Patrol', 103),
(1009, 'Sneha', 'Devi', 'Gupta', 'Detective', 'UP004', 'Criminal Investigation', 101),
(1010, 'Neha', 'Rani', 'Pandey', 'Officer', 'UP005', 'Community Policing', 104),
(1011, 'Aarav', 'Kumar', 'Verma', 'Inspector', 'DL001', 'Criminal Investigation', 201),
(1012, 'Sanya', 'Singh', 'Yadav', 'Sergeant', 'DL002', 'Traffic Control', 201),
(1013, 'Rahul', 'Prasad', 'Sharma', 'Constable', 'DL003', 'Patrol', 205),
(1014, 'Ananya', 'Devi', 'Gupta', 'Detective', 'DL004', 'Criminal Investigation', 203),
(1015, 'Aditi', 'Rani', 'Malhotra', 'Officer', 'DL005', 'Community Policing', 204),
(1016, 'Pooja', 'Kumari','Gupta', 'Sergent','DL006', 'Traffic Control', 202),
(1017, 'Harpreet', 'Singh', 'Sandhu', 'Inspector', 'PB001', 'Criminal Investigation', 301),
(1018, 'Gurmeet', 'Kaur', 'Bajwa', 'Sergeant', 'PB002', 'Traffic Control', 301),
(1019, 'Sandeep', 'Kaur', 'Chopra', 'Constable', 'PB003', 'Patrol', 302),
(1020, 'Baljit', 'Kaur', 'Gill', 'Detective', 'PB004', 'Criminal Investigation', 303),
(1021, 'Jaswinder', 'Singh', 'Malik', 'Officer', 'PB005', 'Community Policing', 302),
(1022, 'Rajesh', 'Kumar', 'Chauhan', 'Inspector', 'PB006', 'Criminal Investigation', 304),
(1023, 'Poonam', 'Kumari', 'Verma', 'Sergeant', 'PB007', 'Traffic Control', 305),
(1024, 'Sukhwinder', 'Singh', 'Dahiya', 'Constable', 'PB008', 'Patrol', 304),
(1025, 'Navjot', 'Kaur', 'Arora', 'Detective', 'PB009', 'Criminal Investigation', 303),
(1026, 'Vikram', 'Singh', 'Choudhary', 'Officer', 'PB010', 'Community Policing', 305),
(1027, 'Suresh', 'Kumar', 'Rao', 'Inspector', 'SI001', 'Criminal Investigation', 401),
(1028, 'Meena', 'Devi', 'Nair', 'Sergeant', 'SI002', 'Traffic Control', 401),
(1029, 'Prakash', 'Raj', 'Suresh', 'Constable', 'SI003', 'Patrol', 402),
(1030, 'Lakshmi', 'Sundari', 'Menon', 'Detective', 'SI004', 'Criminal Investigation', 403),
(1031, 'Rajesh', 'Kumar', 'Iyer', 'Officer', 'SI005', 'Community Policing', 405),
(1032, 'Arun', 'Kumar', 'Sharma', 'Inspector', 'SI006', 'Criminal Investigation', 404),
(1033, 'Deepa', 'Rani', 'Pillai', 'Sergeant', 'SI007', 'Traffic Control', 405),
(1034, 'Vijay', 'Raj', 'Menon', 'Constable', 'SI008', 'Patrol', 402),
(1035, 'Sangeetha', 'Kumari', 'Nair', 'Detective', 'SI009', 'Criminal Investigation', 403),
(1036, 'Rajeshwari', 'Devi', 'Iyer', 'Officer', 'SI010', 'Community Policing', 404),
(1037, 'Rajesh', 'Kumar', 'Desai', 'Inspector', 'WI001', 'Criminal Investigation', 501),
(1038, 'Meera', 'Rani', 'Patel', 'Sergeant', 'WI002', 'Traffic Control', 503),
(1039, 'Ramesh', 'Raj', 'Shah', 'Constable', 'WI003', 'Patrol', 502),
(1040, 'Anita', 'Devi', 'Mehta', 'Detective', 'WI004', 'Criminal Investigation', 503),
(1041, 'Vikram', 'Singh', 'Chauhan', 'Officer', 'WI005', 'Community Policing', 502),
(1042, 'Neha', 'Kumari', 'Joshi', 'Inspector', 'WI006', 'Criminal Investigation', 504),
(1043, 'Harish', 'Kumar', 'Sharma', 'Sergeant', 'WI007', 'Traffic Control', 504),
(1044, 'Sangeeta', 'Kumari', 'Gupta', 'Constable', 'WI008', 'Patrol', 505),
(1045, 'Arun', 'Kumar', 'Bhattacharya', 'Inspector', 'NI001', 'Criminal Investigation', 701),
(1046, 'Rina', 'Devi', 'Chakraborty', 'Sergeant', 'NI002', 'Traffic Control', 701),
(1047, 'Pranab', 'Raj', 'Goswami', 'Constable', 'NI003', 'Patrol', 702),
(1048, 'Mira', 'Rani', 'Das', 'Detective', 'NI004', 'Criminal Investigation', 703),
(1049, 'Manoj', 'Singh', 'Choudhury', 'Officer', 'NI005', 'Community Policing', 702),
(1050, 'Priya', 'Kumari', 'Barua', 'Inspector', 'NI006', 'Criminal Investigation', 704),
(1051, 'Rohit', 'Kumar', 'Sarma', 'Sergeant', 'NI007', 'Traffic Control', 704),
(1052, 'Sangeeta', 'Kumari', 'Boruah', 'Constable', 'NI008', 'Patrol', 702),
(1053, 'Debajit', 'Chandra', 'Borah', 'Detective', 'NI009', 'Criminal Investigation', 703),
(1054, 'Rajesh', 'Kumar', 'Gogoi', 'Officer', 'NI010', 'Community Policing', 704);
 
 
 
 # INSERTION INTO CRIMINAL TABLE
 
 insert into Criminal(criminalID,FirstName, MiddleName, LastName,Gender,DateOfBirth,Nationality,Height,Weight,EyeColor,HairColor,
 TattoosAndScars,Address,City,State,ArrestDate,ArrestingOfficerID, crime, punishment)VALUES
 
(12001, 'Rahul', 'Kumar', 'Sharma', 'M', '1985-05-15', 'Indian', 175.5, 70.2, 'Brown', 'Black', 'Scar on right arm', 'QWE 789 lane', 'Chandni chowk', 'Delhi', '2020-08-18', 1012,'Homicide', 9),
(12002, 'Priya', 'Singh', 'Verma', 'F', '1990-02-20', 'Indian', 160.0, 55.8, 'Hazel', 'Brown', 'Tattoo on left wrist', 'ABC lane', 'Kanpur', 'Uttar Pradesh', '2022-02-18', 1006, 'Bulgury', 4),
(12003, 'Amit', 'Kumar', 'Yadav', 'M', '1988-09-10', 'Indian', 180.2, 75.0, 'Black', 'Black', 'Tattoo on neck', '789 QWE Lane', 'New delhi', 'Delhi', '2021-08-28', 1013, 'Cyber crime''Human Trafficking',10),
(12004, 'Sneha', 'Rani', 'Gupta', 'F', '1995-12-05', 'Indian', 155.0, 48.5, 'Brown', 'Brown', 'Scar on forehead', 'PQR678 Lane', 'Jalandhar', 'Punjab', '2020-01-08', 1018,'Carjacking', 5),
(12005, 'Rajesh', 'Kumar', 'Malik', 'M', '1987-06-30', 'Indian', 172.3, 68.7, 'Green', 'Black', 'Tattoo on right hand', 'cde Lane', 'Guwahati', 'Assam', '2019-05-13', 1053,'Human trafficking',10),
(12006, 'Anjali', 'Verma', 'Chopra', 'F', '1992-03-18', 'Indian', 165.8, 58.0, 'Brown', 'Black', 'Scar on left cheek', 'XYZ lane', 'Agra', 'Uttar pradesh', '2022-03-14', 1007,'Sexual Assault', 15),
(12007, 'Vikram', 'Singh', 'Rawat', 'M', '1998-11-22', 'Indian', 178.6, 72.3, 'Brown', 'Black', 'Tattoo on upper arm', 'QWE Lane', 'Lucknow', 'Uttar Pradesh', '2019-09-11', 1007,'Domestic Violence',3),
(12008, 'Pooja', 'Rani', 'Chaudhary', 'F', '1991-07-12', 'Indian', 162.5, 50.9, 'Brown', 'Brown', 'Scar on right leg', 'xyz123 Lane', 'Gaya', 'Bihar', '2022-10-10', 1003,'Drug Trafficking', 12),
(12009, 'Sandeep', 'Kumar', 'Saini', 'M', '2000-04-08', 'Indian', 175.0, 70.5, 'Black', 'Black', 'Tattoo on chest', 'QWE789 Lane', 'Mohali', 'Punjab', '2022-07-18',1019,'Embezzlement', 7),
(12010, 'Neha', 'Devi', 'Sharma', 'F', '1993-09-28', 'Indian', 160.7, 55.2, 'Brown', 'Brown', 'Tattoo on back', 'jkl123 Lane', 'Haldiya', 'West Bengal', '2021-06-12', 1045, 'Murder',20),
(12011, 'Arjun', 'Rao', 'Nair', 'M', '1986-07-15', 'Indian', 170.2, 68.5, 'Brown', 'Black', 'Scar on left forearm', '123 PQRlane', 'Thrivantampuram', 'Kerala', '2012-08-18', 1032,'Assault',8),
(12012, 'Deepika', 'Krishnan', 'Menon', 'F', '1990-03-20', 'Indian', 162.0, 55.0, 'Brown', 'Brown', 'Tattoo on right ankle', 'qwerty 678 lane', 'Chennai', 'Tamil Nadu', '2018-09-14', 1033,'Robbery',5),
(12013, 'Rajesh', 'Kumar', 'Prasad', 'M', '1988-11-10', 'Indian', 175.8, 72.2, 'Black', 'Black', 'Tattoo on right bicep', '123 ASDF lane', 'Banglore', 'Karnataka', '2015-10-11', 1029, 'Robbery', 4),
(12014, 'Sneha', 'Raj', 'Gopal', 'F', '1995-12-05', 'Indian', 160.5, 50.7, 'Brown', 'Black', 'Scar on left cheek', 'pur lane 123', 'Telengna', 'Andhra Pradesh', '2020-02-19', 1035,'Murder',18),
(12015, 'Vijay', 'Kumar', 'Raju', 'M', '1987-06-30', 'Indian', 180.0, 75.5, 'Brown', 'Black', 'Tattoo on left wrist', 'ABC 123 lane', 'Hydrabad', 'Telangana', '2019-06-03', 1035,'Embezzlement', 10),
(12016, 'Aishwarya', 'Venkatesh', 'Chandran', 'F', '1992-02-18', 'Indian', 165.5, 58.8, 'Brown', 'Black', 'Scar on right leg', 'KLM 456 lane', 'Comabitore', 'Kerala', '2012-11-13', 1032,'Assault',11),
(12017, 'Suresh', 'Rajendran', 'Pillai', 'M', '1998-09-22', 'Indian', 178.2, 70.3, 'Brown', 'Black', 'Tattoo on chest', 'WXY lane', 'Chennai', 'Tamil Nadu', '2011-05-11', 1033,'Domestic Violence', 8),
(12018, 'Kavya', 'Gopalakrishnan', 'Naidu', 'F', '1991-07-12', 'Indian', 160.8, 53.2, 'Brown', 'Black', 'Tattoo on left ankle', 'AMY lane 123', 'Hydrabad', 'Andhra Pradesh', '2016-05-01', 1030,'Sexual Assault', 10),
(12019, 'Rajesh', 'Kumar', 'Patil', 'M', '2000-04-08', 'Indian', 175.0, 70.5, 'Black', 'Black', 'Scar on forehead', 'Appy lane', 'banglore', 'Karnataka', '2022-09-10', 1034,'Carjacking',7),
(12020, 'Shalini', 'Sundaram', 'Raj', 'F', '1993-09-28', 'Indian', 165.7, 57.4, 'Brown', 'Brown', 'Tattoo on upper arm', 'Appy lane 123', 'Chennai', 'Tamil Nadu', '2016-04-18', 1027,'Human Trafficking',17),
(12021, 'Aman', 'Singh', 'Sandhu', 'M', '1986-07-15', 'Indian', 175.2, 75.5, 'Brown', 'Black', 'Scar on left forearm', 'Cherau', 'Jalandhar', 'Punjab', '2022-06-18', 1025,'Human Trafficking', 19),
(12022, 'Simran', 'Kaur', 'Gill', 'F', '1990-03-20', 'Indian', 160.0, 55.0, 'Brown', 'Black', 'Tattoo on right ankle', 'maheru', 'mohali', 'Punjab', '2011-09-18', 1026,'Assault', 8),
(12023, 'Gurpreet', 'Singh', 'Brar', 'M', '1988-11-10', 'Indian', 180.8, 80.2, 'Black', 'Black', 'Tattoo on right bicep', 'law gate', 'amristar', 'Punjab', '2018-04-16', 1019,'Robbery', 7),
(12024, 'Harleen', 'Kaur', 'Dhillon', 'F', '1995-12-05', 'Indian', 155.5, 48.7, 'Brown', 'Black', 'Scar on left cheek', 'law gate', 'phagwara', 'Punjab', '2015-04-19', 1025,'Drug Trafficking', 9),
(12025, 'Jaspreet', 'Singh', 'Randhawa', 'M', '1987-06-30', 'Indian', 170.0, 70.5, 'Brown', 'Black', 'Tattoo on left wrist', 'WXY 123 lane', 'ludhina', 'Punjab', '2021-07-16', 1017,'Sexual Assault', 7),
(12026, 'Navdeep', 'Kaur', 'Grewal', 'F', '1992-02-18', 'Indian', 165.0, 58.8, 'Brown', 'Black', 'Scar on right leg', 'PQR 123 lane', 'Patila', 'Punjab', '2014-09-17', 1024,'Drug Trafficking',8),
(12027, 'Rajinder', 'Singh', 'Sidhu', 'M', '1998-09-22', 'Indian', 175.2, 72.3, 'Brown', 'Black', 'Tattoo on chest', 'ABC lane 123', 'ludhina', 'Punjab', '2013-06-25', 1018,'Robbery',4),
(12028, 'Harpreet', 'Kaur', 'Cheema', 'F', '1991-07-12', 'Indian', 160.8, 53.2, 'Brown', 'Black', 'Tattoo on left ankle', 'ABC 123 lane', 'amritsar', 'Punjab', '2017-12-22', 1021,'Burglary',7),
(12029, 'Ravinder', 'Singh', 'Bains', 'M', '2000-04-08', 'Indian', 180.0, 75.5, 'Black', 'Black', 'Scar on forehead', 'WXY 123 lane', 'Mohali', 'Punjab', '2013-12-12', 1023,'Drug Trafficking',9),
(12030, 'Harjinder', 'Kaur', 'Ghuman', 'F', '1993-09-28', 'Indian', 165.7, 57.4, 'Brown', 'Brown', 'Tattoo on upper arm', 'jkl 123 lane', 'jalandhar', 'Punjab', '2015-04-29', 1020,'Embezzlement', 10),
(12031, 'Amit', 'Kumar', 'Singh', 'M', '1986-07-15', 'Indian', 175.2, 75.5, 'Brown', 'Black', 'Scar on left forearm', 'Boring road', 'Patna', 'Bihar', '2010-03-26', 1005,'Carjacking',5),
(12032, 'Neha', 'Rani', 'Verma', 'F', '1990-03-20', 'Indian', 160.0, 55.0, 'Brown', 'Black', 'Tattoo on right ankle', 'Kali chowk', 'Lucknow', 'Uttar Pradesh', '2009-07-30', 1009,'Murder',20),
(12033, 'Rajesh', 'Kumar', 'Yadav', 'M', '1988-11-10', 'Indian', 180.8, 80.2, 'Black', 'Black', 'Tattoo on right bicep', 'Firoz nagar ', 'Old delhi', 'Delhi', '2012-08-29', 1011,'Cybercerime',12),
(12034, 'Sneha', 'Rani', 'Gupta', 'F', '1995-12-05', 'Indian', 155.5, 48.7, 'Brown', 'Black', 'Scar on left cheek', 'Kajra Bazar', 'Gaya', 'Bihar', '2008-10-26', 1004,'Assault',3),
(12035, 'Rajendra', 'Singh', 'Chauhan', 'M', '1987-06-30', 'Indian', 170.0, 70.5, 'Brown', 'Black', 'Tattoo on left wrist', 'City chowk', 'Allahabad', 'Uttar Pradesh', '2022-06-11', 1006,'Domestic Violence',6),
(12036, 'Deepika', 'Kaur', 'Sharma', 'F', '1992-02-18', 'Indian', 165.0, 58.8, 'Brown', 'Black', 'Scar on right leg', 'West chowk', 'New Delhi', 'Delhi', '2021-11-26', 1013,'Sexual Assault',8),
(12037, 'Vikram', 'Singh', 'Rawat', 'M', '1998-09-22', 'Indian', 175.2, 72.3, 'Brown', 'Black', 'Tattoo on chest', 'mahommabad colony', 'Agra', 'Uttar Pradesh', '2022-09-28', 1008,'Human Trafficking',17),
(12038, 'Pooja', 'Rani', 'Chaudhary', 'F', '1991-07-12', 'Indian', 160.8, 53.2, 'Brown', 'Black', 'Tattoo on left ankle', 'Bhole chowk', 'Muzzafapur', 'Bihar', '2020-10-24', 1001,'cybercrime' , 10),
(12039, 'Sandeep', 'Kumar', 'Saini', 'M', '2000-04-08', 'Indian', 180.0, 75.5, 'Black', 'Black', 'Scar on forehead', 'STW lane 123', 'Agra', 'Uttar Pradesh', '2018-11-21', 1009,'Assult', 5),
(12040, 'Neha', 'Devi', 'Sharma', 'F', '1993-09-28', 'Indian', 165.7, 57.4, 'Brown', 'Brown', 'Tattoo on upper arm', 'Address10', 'City10', 'Delhi', '2022-12-25', 1011,'Burglary',4),
(12041, 'Vishal', 'Kumar', 'Yadav', 'M', '1992-01-15', 'Indian', 172.5, 68.0, 'Brown', 'Black', 'Tattoo on right shoulder', 'Address11', 'City11', 'Uttar Pradesh', '2009-08-18', 1007,'Embezzlement',9),
(12042, 'Ritu', 'Rani', 'Verma', 'F', '1989-05-02', 'Indian', 158.0, 52.5, 'Green', 'Brown', 'Scar on right arm', 'Address12', 'City12', 'Delhi', '2010-01-28', 1012,'Domestic Violence',8),
(12043, 'Alok', 'Kumar', 'Sharma', 'M', '1997-03-10', 'Indian', 180.2, 76.8, 'Blue', 'Black', 'Tattoo on chest', 'Address13', 'City13', 'Uttar Pradesh', '2018-05-15', 1010,'Carjacking',3),
(12044, 'Priya', 'Rani', 'Gupta', 'F', '1994-08-20', 'Indian', 163.5, 55.3, 'Brown', 'Black', 'Tattoo on left wrist', 'Address14', 'City14', 'Bihar', '2020-06-13', 1004,'Robbery',8),
(12045, 'Ankit', 'Kumar', 'Verma', 'M', '1991-12-12', 'Indian', 175.0, 70.0, 'Brown', 'Black', 'Scar on left cheek', 'Address15', 'City15', 'Delhi', '2017-05-30', 1015,'Assault',5),
(12046, 'Rani', 'Devi', 'Singh', 'F', '1988-06-25', 'Indian', 160.5, 58.7, 'Brown', 'Black', 'Tattoo on right hand', 'Address16', 'City16', 'Uttar Pradesh', '2021-02-21', 1008,'Drug Trafficking',7),
(12047, 'Raj', 'Kumar', 'Malik', 'M', '1996-04-18', 'Indian', 178.0, 72.0, 'Black', 'Black', 'Scar on forehead', 'Address17', 'City17', 'Delhi', '2017-09-22', 1012,'Assault',8),
(12048, 'Sunita', 'Kaur', 'Chopra', 'F', '1993-09-10', 'Indian', 162.2, 54.6, 'Brown', 'Brown', 'Tattoo on back', 'Address18', 'City18', 'Punjab', '2016-07-28', 1023,'Human Trafficking',15),
(12049, 'Rakesh', 'Kumar', 'Gupta', 'M', '1999-02-08', 'Indian', 175.8, 68.9, 'Brown', 'Black', 'Tattoo on left forearm', 'Address19', 'City19', 'Uttar Pradesh', '2017-05-16', 1009,'cybercrime',10),
(12050, 'Neetu', 'Rani', 'Sharma', 'F', '1987-11-05', 'Indian', 160.9, 53.0, 'Brown', 'Black', 'Scar on right leg', 'Address20', 'City20', 'Bihar', '2022-09-26', 1002,'Robbery',8),
(12051, 'Rajesh', 'Kumar', 'Sharma', 'M', '1986-07-15', 'Indian', 175.2, 75.5, 'Brown', 'Black', 'Scar on left forearm', 'Address1', 'City1', 'Maharashtra', '2015-03-31', 1043,'Sexual Assault',8),
(12052, 'Priya', 'Rani', 'Desai', 'F', '1990-03-20', 'Indian', 160.0, 55.0, 'Brown', 'Black', 'Tattoo on right ankle', 'Address2', 'City2', 'Goa', '2022-07-10', 1044,'Murder',20),
(12053, 'Karan', 'Singh', 'Patel', 'M', '1988-11-10', 'Indian', 180.8, 80.2, 'Black', 'Black', 'Tattoo on right bicep', 'Address3', 'City3', 'Gujarat', '2012-08-18', 1042,'Robbery',4),
(12054, 'Renuka', 'Rao', 'Chauhan', 'F', '1995-12-05', 'Indian', 155.5, 48.7, 'Brown', 'Black', 'Scar on left cheek', 'Address4', 'City4', 'Rajasthan', '2014-05-22', 1044,'Domestic Violence',5),
(12055, 'Suresh', 'Kumar', 'Naik', 'M', '1987-06-30', 'Indian', 170.0, 70.5, 'Brown', 'Black', 'Tattoo on left wrist', 'Address5', 'City5', 'Maharashtra', '2014-09-28', 1041,'Assault',4),
(12056, 'Suman', 'Rani', 'Fernandes', 'F', '1992-02-18', 'Indian', 165.0, 58.8, 'Brown', 'Black', 'Scar on right leg', 'Address6', 'City6', 'Goa', '2014-03-18', 1042,'Robbery',3),
(12057, 'Vikram', 'Singh', 'Mehta', 'M', '1998-09-22', 'Indian', 175.2, 72.3, 'Brown', 'Black', 'Tattoo on chest', 'opq lane', 'surat', 'Gujarat', '2010-02-28', 1043,'Embezzlement',6),
(12058, 'Anjali', 'Verma', 'Jain', 'F', '1991-07-12', 'Indian', 160.8, 53.2, 'Brown', 'Black', 'Tattoo on left ankle', 'Jay lane', 'Jaipur', 'Rajasthan', '2014-09-17', 1044,'Sexual Assault',10),
(12059, 'Nikhil', 'Kumar', 'Doshi', 'M', '2000-04-08', 'Indian', 180.0, 75.5, 'Black', 'Black', 'Scar on forehead', 'TUV lane', 'Bandra', 'Maharashtra', '2006-03-14', 1041,'Drug Trafficking',12),
(12060, 'Meena', 'Rani', 'Purohit', 'F', '1993-09-28', 'Indian', 165.7, 57.4, 'Brown', 'Brown', 'Tattoo on upper arm', 'Wine lane', 'Panji', 'Goa', '2006-09-12', 1042,'Human Trafficking',19),
(12061, 'Ravi', 'Kumar', 'Soni', 'M', '1992-01-15', 'Indian', 172.5, 68.0, 'Brown', 'Black', 'Tattoo on right shoulder', 'ABC lane', 'Ahamdabad', 'Gujarat', '2013-07-19', 1043,'Drug Trafficking',13),
(12062, 'Shilpa', 'Rani', 'Nair', 'F', '1989-05-02', 'Indian', 158.0, 52.5, 'Green', 'Brown', 'Scar on right arm', 'JKL 123 lane', 'Mumbai', 'Maharashtra', '2014-12-13', 1041,'Domestic Violence',8),
(12063, 'Amit', 'Kumar', 'Vyas', 'M', '1997-03-10', 'Indian', 180.2, 76.8, 'Blue', 'Black', 'Tattoo on chest', 'Bandra lane ', 'Surat', 'Gujarat', '2007-02-15', 1041,'Assault',5),
(12064, 'Kavita', 'Rani', 'Shah', 'F', '1994-08-20', 'Indian', 163.5, 55.3, 'Brown', 'Black', 'Tattoo on left wrist', 'Abu lane', 'jaipur', 'Rajasthan', '2007-11-18', 1043,'Sexual Assault', 7),
(12065, 'Rahul', 'Kumar', 'Bhati', 'M', '1991-12-12', 'Indian', 175.0, 70.0, 'Brown', 'Black', 'Scar on left cheek', 'PQR 678 lane', 'Bandra', 'Maharashtra', '2008-12-27', 1044,'Burglary',4),
(12066, 'Poonam', 'Devi', 'Solanki', 'F', '1988-06-25', 'Indian', 160.5, 58.7, 'Brown', 'Black', 'Tattoo on right hand', 'TUV 123 lane', 'Vadodra', 'Gujarat', '2008-06-11', 1042,'Murder',17),
(12067, 'Rajendra', 'Singh', 'Chavan', 'M', '1996-04-18', 'Indian', 178.0, 72.0, 'Black', 'Black', 'Scar on forehead', 'JKL lane', 'Boriwali', 'Maharashtra', '2006-04-12', 1043,'Domestic Violence',6),
(12068, 'Seema', 'Kaur', 'Fadnavis', 'F', '1993-09-10', 'Indian', 162.2, 54.6, 'Brown', 'Brown', 'Tattoo on back', 'XYZ lane', 'Bnadra', 'Maharashtra', '2007-09-13', 1045,'Carjacking',4),
(12069, 'Amit', 'Kumar', 'Rathore', 'M', '1999-02-08', 'Indian', 175.8, 68.9, 'Brown', 'Black', 'Tattoo on left forearm', 'ABC lane ', 'jaipur', 'Rajasthan', '2014-06-22', 1041,'Murder',18),
(12070, 'Anita', 'Rani', 'Deshmukh', 'F', '1987-11-05', 'Indian', 160.9, 53.0, 'Brown', 'Black', 'Scar on right leg', 'Thane', 'Pune', 'Maharashtra', '2017-12-25', 1042,'Drug Trafficking',12);


#INSERATION INTO VICTIM TABLE


INSERT INTO Victim (victimID, FirstName, MiddleName, LastName, Gender, DateOfBirth, Nationality, Address, City, State, PhoneNo, Email, IncidentDate, ReportingOfficerID, CriminalID,crime_happened)
VALUES
(20001, 'Amit', 'Kumar', 'Sharma', 'Male', '1990-05-15', 'Indian', '1234 ABC Colony', 'Mumbai', 'Maharashtra', '9876543210', 'amit.sharma@example.com', '2019-08-10', 1012, 12001,'Homicide'),
(20002, 'Priya', 'Rani', 'Verma', 'Female', '1985-12-02', 'Indian', '456 XYZ Nagar', 'Bangalore', 'Karnataka', '8765432109', 'priya.verma@example.com', '2022-01-18', 1006, 12002,'Bulgury'),
(20003, 'Rajesh', 'Kumar', 'Singh', 'Male', '1995-08-22', 'Indian', '789 PQR Street', 'Chennai', 'Tamil Nadu', '7654321098', 'rajesh.singh@example.com', '2021-06-15', 1013, 12003,'cybercrime human trafficking'),
(20004, 'Sneha', 'Dev', 'Gupta', 'Female', '1992-03-10', 'Indian', '567 MNO Colony', 'Kolkata', 'West Bengal', '6543210987', 'sneha.gupta@example.com', '2019-08-05', 1018, 12004,'carjacking'),
(20005, 'Rahul', 'Mohan', 'Choudhary', 'Male', '1988-07-01', 'Indian', '890 JKL Nagar', 'Hyderabad', 'Telangana', '5432109876', 'rahul.choudhary@example.com', '2018-07-10', 1053, 12005,'human trafficking'),
(20006, 'Pooja', 'Nath', 'Sharma', 'Female', '1999-01-20', 'Indian', '234 GHI Street', 'Pune', 'Maharashtra', '4321098765', 'pooja.sharma@example.com', '2021-06-25', 1007, 12006,'sexual assault'),
(20007, 'Vikram', 'Raj', 'Patel', 'Male', '1987-11-07', 'Indian', '678 DEF Colony', 'Ahmedabad', 'Gujarat', '3210987654', 'vikram.patel@example.com', '2018-08-12', 1007, 12007,'domestic violence'),
(20008, 'Anjali', 'Amit', 'Rao', 'Female', '1993-09-18', 'Indian', '1234 ABC Street', 'Jaipur', 'Rajasthan', '2109876543', 'anjali.rao@example.com', '2022-05-28', 1003, 12008,'drug trafficing'),
(20009, 'Gaurav', 'Suresh', 'Kumar', 'Male', '1991-04-30', 'Indian', '456 XYZ Nagar', 'Lucknow', 'Uttar Pradesh', '1098765432', 'gaurav.kumar@example.com', '2021-06-10', 1019, 12009,'embexxlement'),
(20010, 'Sunita', 'Rajesh', 'Chopra', 'Female', '1996-06-12', 'Indian', '789 PQR Colony', 'Bhubaneswar', 'Odisha', '0987654321', 'sunita.chopra@example.com', '2020-08-02', 1045, 12010,'murder'),
(20011, 'Ravi', 'Kumar', 'Singh', 'Male', '1992-05-15', 'Indian', '1234 ABC Colony', 'Patna', 'Bihar', '9876543210', 'ravi.singh@example.com', '2011-08-10', 1032, 12011,'Assault'),
(20012, 'Suman', 'Devi', 'Verma', 'Female', '1985-12-02', 'Indian', '456 XYZ Nagar', 'Gaya', 'Bihar', '8765432109', 'suman.verma@example.com', '2015-07-20', 1033, 12012,'robbery'),
(20013, 'Amit', 'Kumar', 'Mishra', 'Male', '1995-08-22', 'Indian', '789 PQR Street', 'Bhagalpur', 'Bihar', '7654321098', 'amit.mishra@example.com', '2014-06-15', 1029, 12013,'robbery'),
(20014, 'Priya', 'Kumari', 'Yadav', 'Female', '1992-03-10', 'Indian', '567 MNO Colony', 'Darbhanga', 'Bihar', '6543210987', 'priya.yadav@example.com', '2019-08-05', 1035, 12014,'murder'),
(20015, 'Rahul', 'Kumar', 'Choudhary', 'Male', '1988-07-01', 'Indian', '890 JKL Nagar', 'Muzaffarpur', 'Bihar', '5432109876', 'rahul.choudhary@example.com', '2018-07-10', 1035, 12015,'embezzlement'),
(20016, 'Sneha', 'Kumari', 'Gupta', 'Female', '1999-01-20', 'Indian', '234 GHI Street', 'Patna', 'Bihar', '4321098765', 'sneha.gupta@example.com', '2011-06-25', 1032, 12016,'assault'),
(20017, 'Vikas', 'Kumar', 'Jha', 'Male', '1987-11-07', 'Indian', '678 DEF Colony', 'Gaya', 'Bihar', '3210987654', 'vikas.jha@example.com', '2010-08-12', 1033, 12017,'domestic violence'),
(20018, 'Anjali', 'Kumari', 'Rai', 'Female', '1993-09-18', 'Indian', '1234 ABC Street', 'Bhagalpur', 'Bihar', '2109876543', 'anjali.rai@example.com', '2014-07-28', 1030, 12018,'sexual assault'),
(20019, 'Alok', 'Kumar', 'Choudhary', 'Male', '1991-04-30', 'Indian', '456 XYZ Nagar', 'Darbhanga', 'Bihar', '1098765432', 'alok.choudhary@example.com', '2020-06-10', 1034, 12019,'carjacking'),
(20020, 'Sunita', 'Kumari', 'Yadav', 'Female', '1996-06-12', 'Indian', '789 PQR Colony', 'Muzaffarpur', 'Bihar', '0987654321', 'sunita.yadav@example.com', '2013-08-02', 1027, 12020,'human trafficking'),
(20021, 'Amit', 'Kumar', 'Yadav', 'Male', '1990-05-15', 'Indian', '1234 ABC Colony', 'Lucknow', 'Uttar Pradesh', '9876543210', 'amit.yadav@example.com', '2021-08-10', 1025, 12021,'human trafficking'),
(20022, 'Priya', 'Rani', 'Sharma', 'Female', '1985-12-02', 'Indian', '456 XYZ Nagar', 'Kanpur', 'Uttar Pradesh', '8765432109', 'priya.sharma@example.com', '2010-07-20', 1026, 12022,'assault'),
(20023, 'Rajesh', 'Kumar', 'Verma', 'Male', '1995-08-22', 'Indian', '789 PQR Street', 'Agra', 'Uttar Pradesh', '7654321098', 'rajesh.verma@example.com', '2017-06-15', 1019, 12023,'robbery'),
(20024, 'Sneha', 'Devi', 'Gupta', 'Female', '1992-03-10', 'Indian', '567 MNO Colony', 'Varanasi', 'Uttar Pradesh', '6543210987', 'sneha.gupta@example.com', '2014-08-05', 1025, 12024,'drug trafficing'),
(20025, 'Rahul', 'Mohan', 'Choudhary', 'Male', '1988-07-01', 'Indian', '890 JKL Nagar', 'Allahabad', 'Uttar Pradesh', '5432109876', 'rahul.choudhary@example.com', '2021-07-10', 1017, 12025,'robbery'),
(20026, 'Pooja', 'Nath', 'Sharma', 'Female', '1999-01-20', 'Indian', '234 GHI Street', 'Ghaziabad', 'Uttar Pradesh', '4321098765', 'pooja.sharma@example.com', '2012-06-25', 1024, 12026,'bulgury'),
(20027, 'Vikram', 'Raj', 'Yadav', 'Male', '1987-11-07', 'Indian', '678 DEF Colony', 'Noida', 'Uttar Pradesh', '3210987654', 'vikram.yadav@example.com', '2012-08-12', 1018, 12027,'drug trafficing'),
(20028, 'Anjali', 'Amit', 'Rai', 'Female', '1993-09-18', 'Indian', '1234 ABC Street', 'Meerut', 'Uttar Pradesh', '2109876543', 'anjali.rai@example.com', '2016-07-28', 1021, 12028,'embezzlement'),
(20029, 'Gaurav', 'Suresh', 'Kumar', 'Male', '1991-04-30', 'Indian', '456 XYZ Nagar', 'Kanpur', 'Uttar Pradesh', '1098765432', 'gaurav.kumar@example.com', '2012-06-10', 1023, 12029,'carjacking'),
(20030, 'Sunita', 'Rajesh', 'Chopra', 'Female', '1996-06-12', 'Indian', '789 PQR Colony', 'Lucknow', 'Uttar Pradesh', '0987654321', 'sunita.chopra@example.com', '2014-08-02', 1020, 12030,'murder'),
(20031, 'Amit', 'Kumar', 'Sharma', 'Male', '1990-05-15', 'Indian', '1234 ABC Colony', 'New Delhi', 'Delhi', '9876543210', 'amit.sharma@example.com', '2009-08-10', 1005, 12031,'cybercrime'),
(20032, 'Priya', 'Rani', 'Verma', 'Female', '1985-12-02', 'Indian', '456 XYZ Nagar', 'New Delhi', 'Delhi', '8765432109', 'priya.verma@example.com', '2008-07-20', 1009, 12032,'assault'),
(20033, 'Rajesh', 'Kumar', 'Singh', 'Male', '1995-08-22', 'Indian', '789 PQR Street', 'New Delhi', 'Delhi', '7654321098', 'rajesh.singh@example.com', '2012-06-15', 1011, 12033,'domestic voilence'),
(20034, 'Sneha', 'Dev', 'Gupta', 'Female', '1992-03-10', 'Indian', '567 MNO Colony', 'New Delhi', 'Delhi', '6543210987', 'sneha.gupta@example.com', '2007-08-05', 1004, 12034,'sexual assault'),
(20035, 'Rahul', 'Mohan', 'Choudhary', 'Male', '1988-07-01', 'Indian', '890 JKL Nagar', 'New Delhi', 'Delhi', '5432109876', 'rahul.choudhary@example.com', '2021-07-10', 1006, 12035,'human trafficking'),
(20036, 'Pooja', 'Nath', 'Sharma', 'Female', '1999-01-20', 'Indian', '234 GHI Street', 'New Delhi', 'Delhi', '4321098765', 'pooja.sharma@example.com', '2020-06-25', 1013, 12036,'cybercrime'),
(20037, 'Vikram', 'Raj', 'Patel', 'Male', '1987-11-07', 'Indian', '678 DEF Colony', 'New Delhi', 'Delhi', '3210987654', 'vikram.patel@example.com', '2021-08-12', 1008, 12037,'assault'),
(20038, 'Anjali', 'Amit', 'Rao', 'Female', '1993-09-18', 'Indian', '1234 ABC Street', 'New Delhi', 'Delhi', '2109876543', 'anjali.rao@example.com', '2019-07-28', 1001, 12038,'burglary'),
(20039, 'Gaurav', 'Suresh', 'Kumar', 'Male', '1991-04-30', 'Indian', '456 XYZ Nagar', 'New Delhi', 'Delhi', '1098765432', 'gaurav.kumar@example.com', '2017-06-10', 1009, 12039,'embezzlement'),
(20040, 'Sunita', 'Rajesh', 'Chopra', 'Female', '1996-06-12', 'Indian', '789 PQR Colony', 'New Delhi', 'Delhi', '0987654321', 'sunita.chopra@example.com', '2022-08-02', 1011, 12040,'domestic voilence'),
(20041, 'Suman', 'Kumari', 'Das', 'Female', '1990-07-15', 'Indian', '1234 ABC Colony', 'Kolkata', 'West Bengal', '9876543210', 'suman.das@example.com', '2008-08-10', 1007, 12041,'carjacking'),
(20042, 'Rahul', 'Kumar', 'Bhattacharya', 'Male', '1985-12-02', 'Indian', '456 XYZ Nagar', 'Kolkata', 'West Bengal', '8765432109', 'rahul.bhattacharya@example.com', '2009-07-20', 1012, 12042,'robbery'),
(20043, 'Mita', 'Devi', 'Barman', 'Female', '1995-08-22', 'Indian', '789 PQR Street', 'Siliguri', 'West Bengal', '7654321098', 'mita.barman@example.com', '2017-06-15', 1010, 12043,'assault'),
(20044, 'Kunal', 'Das', 'Chakraborty', 'Male', '1992-03-10', 'Indian', '567 MNO Colony', 'Howrah', 'West Bengal', '6543210987', 'kunal.chakraborty@example.com', '2019-08-05', 1004, 12044,'drug trafficking'),
(20045, 'Priya', 'Kumari', 'Gupta', 'Female', '1988-07-01', 'Indian', '890 JKL Nagar', 'Kolkata', 'West Bengal', '5432109876', 'priya.gupta@example.com', '2016-07-10', 1015, 12045,'assault'),
(20046, 'Amit', 'Kumar', 'Deb', 'Male', '1999-01-20', 'Indian', '234 GHI Street', 'Guwahati', 'Assam', '4321098765', 'amit.deb@example.com', '2020-06-25', 1008, 12046,'human trafficking'),
(20047, 'Rina', 'Devi', 'Barua', 'Female', '1987-11-07', 'Indian', '678 DEF Colony', 'Silchar', 'Assam', '3210987654', 'rina.barua@example.com', '2015-08-12', 1012, 12047,'cybercrime'),
(20048, 'Saurav', 'Kumar', 'Sarma', 'Male', '1993-09-18', 'Indian', '1234 ABC Street', 'Dibrugarh', 'Assam', '2109876543', 'saurav.sarma@example.com', '2015-07-28', 1023, 12048,'robbery'),
(20049, 'Rita', 'Kumari', 'Das', 'Female', '1991-04-30', 'Indian', '456 XYZ Nagar', 'Guwahati', 'Assam', '1098765432', 'rita.das@example.com', '2016-06-10', 1009, 12049,'sexual assault'),
(20050, 'Alok', 'Kumar', 'Gogoi', 'Male', '1996-06-12', 'Indian', '789 PQR Colony', 'Jorhat', 'Assam', '0987654321', 'alok.gogoi@example.com', '2020-08-02', 1002, 12050,'murder'),
(20051, 'Pallavi', 'Kumari', 'Devi', 'Female', '1989-09-10', 'Indian', '234 GHI Street', 'Kolkata', 'West Bengal', '9876543210', 'pallavi.devi@example.com', '2014-08-15', 1043, 12051,'robbery'),
(20052, 'Sourav', 'Kumar', 'Majumdar', 'Male', '1994-02-25', 'Indian', '678 DEF Colony', 'Howrah', 'West Bengal', '8765432109', 'sourav.majumdar@example.com', '2015-07-05', 1044, 12052,'domestic voilenece'),
(20053, 'Ankita', 'Kumari', 'Sarkar', 'Female', '1997-11-15', 'Indian', '1234 ABC Street', 'Kolkata', 'West Bengal', '7654321098', 'ankita.sarkar@example.com', '2011-06-20', 1042, 12053,'assault'),
(20054, 'Rohan', 'Kumar', 'Bose', 'Male', '1986-04-10', 'Indian', '456 XYZ Nagar', 'Guwahati', 'Assam', '6543210987', 'rohan.bose@example.com', '2013-08-01', 1044, 12054,'robbery'),
(20055, 'Simran', 'Kaur', 'Das', 'Female', '1998-08-08', 'Indian', '789 PQR Colony', 'Siliguri', 'West Bengal', '5432109876', 'simran.das@example.com', '2013-07-12', 1041, 12055,'embezzlement'),
(20061, 'Ravi', 'Kumar', 'Reddy', 'Male', '1991-05-15', 'Indian', '1234 ABC Colony', 'Hyderabad', 'Telangana', '9876543210', 'ravi.reddy@example.com', '2013-08-10', 1042, 12056,'sexual assault'),
(20062, 'Sita', 'Devi', 'Rao', 'Female', '1986-12-02', 'Indian', '456 XYZ Nagar', 'Warangal', 'Telangana', '8765432109', 'sita.rao@example.com', '2009-07-20', 1043, 12057,'drug trafficiking'),
(20063, 'Nikhil', 'Kumar', 'Gupta', 'Male', '1994-08-22', 'Indian', '789 PQR Street', 'Vijayawada', 'Andhra Pradesh', '7654321098', 'nikhil.gupta@example.com', '2013-06-15', 1044, 12058,'human trafficking'),
(20064, 'Priya', 'Kumari', 'Chowdary', 'Female', '1992-03-10', 'Indian', '567 MNO Colony', 'Visakhapatnam', 'Andhra Pradesh', '6543210987', 'priya.chowdary@example.com', '2005-08-05', 1041, 12059,'drug trafficking'),
(20065, 'Rahul', 'Mohan', 'Patel', 'Male', '1988-07-01', 'Indian', '890 JKL Nagar', 'Hyderabad', 'Telangana', '5432109876', 'rahul.patel@example.com', '2005-07-10', 1042, 12060,'domestic voilence'),
(20066, 'Pooja', 'Nath', 'Sharma', 'Female', '1998-01-20', 'Indian', '234 GHI Street', 'Khammam', 'Telangana', '4321098765', 'pooja.sharma@example.com', '2012-06-25', 1043, 12061,'assault'),
(20067, 'Vikram', 'Raj', 'Reddy', 'Male', '1987-11-07', 'Indian', '678 DEF Colony', 'Warangal', 'Telangana', '3210987654', 'vikram.reddy@example.com', '2014-08-12', 1041, 12062,'sexual assault'),
(20068, 'Anjali', 'Amit', 'Gupta', 'Female', '1993-09-18', 'Indian', '1234 ABC Street', 'Vijayawada', 'Andhra Pradesh', '2109876543', 'anjali.gupta@example.com', '2006-07-28', 1041, 12063,'burglary'),
(20069, 'Gaurav', 'Suresh', 'Kumar', 'Male', '1991-04-30', 'Indian', '456 XYZ Nagar', 'Visakhapatnam', 'Andhra Pradesh', '1098765432', 'gaurav.kumar@example.com', '2006-06-10', 1043, 12064,'murder'),
(20070, 'Sunita', 'Rajesh', 'Mohan', 'Female', '1997-06-12', 'Indian', '789 PQR Colony', 'Hyderabad', 'Telangana', '0987654321', 'sunita.mohan@example.com', '2007-08-02', 1044, 12065,'domestic voilence'),
(20071, 'Amit', 'Kumar', 'Sharma', 'Male', '1989-05-15', 'Indian', '1234 ABC Colony', 'Mumbai', 'Maharashtra', '9876543210', 'amit.sharma@example.com', '2007-08-10', 1042, 12066,'carjacking'),
(20072, 'Priya', 'Rani', 'Verma', 'Female', '1995-12-02', 'Indian', '456 XYZ Nagar', 'Goa', 'Goa', '8765432109', 'priya.verma@example.com', '2005-07-20', 1043, 12067,'murder'),
(20073, 'Rajesh', 'Kumar', 'Singh', 'Male', '1991-08-22', 'Indian', '789 PQR Street', 'Mumbai', 'Maharashtra', '7654321098', 'rajesh.singh@example.com', '2006-06-15', 1045, 12068,'drugtracfficking'),
(20074, 'Sneha', 'Devi', 'Gupta', 'Female', '1993-03-10', 'Indian', '567 MNO Colony', 'Goa', 'Goa', '6543210987', 'sneha.gupta@example.com', '2013-08-05', 1041, 12069, 'cybercrime'),
(20075, 'Rahul', 'Mohan', 'Choudhary', 'Male', '1987-07-01', 'Indian', '890 JKL Nagar', 'Mumbai', 'Maharashtra', '5432109876', 'rahul.choudhary@example.com', '2017-07-10', 1042, 12070,'assault');


desc policestation;
desc officers;
desc victim;
desc criminal;


select * from policestation;
select * from officers;
select * from victim;
select * from criminal;



#selection and updation in policestation table

select * from policestation 
where city='patna';

select * from policestation 
where officerCount>20;

select distinct city from policestation;

select distinct city from
policestation where officercount>25;


#selection and updation in officers table


select distinct position from officers; 

Select distinct stationId from officers;


use alpha;

#seelction and updation in criminal table;


select * from criminal;
select * from criminal where weight >65;

select * from criminal  where punishment>10;

select * from criminal where height>166;

select * from criminal where state="Uttar pradesh";

select * from criminal where city="gaya";

select * from criminal where crime="Assault";

select * from criminal where gender='f';

select * from criminal where arrestingofficerid='1013';




# selection and updation in victim table

select * from victim;

select *from victim where city="Mumbai";

select * from victim where crime_happened="Assault"; 



    
 