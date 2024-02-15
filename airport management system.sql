use alpha;


# AIRPORT TABLES 

CREATE TABLE Airports (
    AirportID INT PRIMARY KEY,
    IATACode VARCHAR(3) NOT NULL,
    ICAOCode VARCHAR(4),
    AirportName VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Latitude DECIMAL(9,6) NOT NULL,
    Longitude DECIMAL(9,6) NOT NULL,
    Elevation INT,
    TimeZone VARCHAR(50) NOT NULL
);




#AIRLINES TABLE 

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY,
    IATACode VARCHAR(2) NOT NULL,
    ICAOCode VARCHAR(3),
    AirlineName VARCHAR(255) NOT NULL,
    HeadquartersAirportID INT,
    Country VARCHAR(100) NOT NULL,
    FOREIGN KEY (HeadquartersAirportID) REFERENCES Airports(AirportID)
);


# FLIGHT TABLE
 
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(10) NOT NULL,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    AirlineID INT,
    DepartureDateTime DATETIME NOT NULL,
    ArrivalDateTime DATETIME NOT NULL,
    AircraftType VARCHAR(50) NOT NULL,
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);


#PASSENGERS TABLE

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20),
    BookingReference VARCHAR(10) NOT NULL,
    FlightID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    AirlineID INT,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);


# BOOKINGS TABLE

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    BookingReference VARCHAR(10) NOT NULL,
    BookingDate DATE NOT NULL,
    PassengerID INT,
    FlightID INT,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);



#CREW TABLE

CREATE TABLE Crew (
    CrewID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    AirlineID INT,
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);


# PAYMENT TABLE

CREATE TABLE PaymentTransactions (
    TransactionID INT PRIMARY KEY,
    BookingID INT,
    TransactionDate DATETIME NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL
);


#MAINTENANCE TABLE 


CREATE TABLE MaintenanceRecords (
    RecordID INT PRIMARY KEY,
    AircraftID INT,
    MaintenanceDate DATE NOT NULL,
    Description TEXT,
    Cost DECIMAL(10, 2),
    TechnicianName VARCHAR(100)
);


#CUSTOMER FEEDBACK TABLE

CREATE TABLE CustomerFeedback (
    FeedbackID INT PRIMARY KEY,
    FlightID INT,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    FeedbackText TEXT NOT NULL,
    Rating INT,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);



#ROLE TABLE


CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL,
    Description TEXT
);


# ADMINISTRATIVE TABLE


CREATE TABLE Administrative (
    AdminID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);


desc airports;
desc airlines;
desc crew;
desc administrative;
desc booking;
desc customerfeedback;
desc flights;
desc paymenttransactions;
desc roles;
desc maintenancerecords;
desc passengers;


#INSERING INTO AIRports TABLE

INSERT INTO Airports (AirportID, IATACode, ICAOCode, AirportName, Location, Country, Latitude, Longitude, Elevation, TimeZone)
VALUES
    (1, 'JFK', 'KJFK', 'John F. Kennedy International Airport', 'New York', 'United States', 40.6413, -73.7781, 13, 'America/New_York'),
    (2, 'LAX', 'KLAX', 'Los Angeles International Airport', 'Los Angeles', 'United States', 33.9416, -118.4085, 38, 'America/Los_Angeles'),
    (3, 'LHR', 'EGLL', 'London Heathrow Airport', 'London', 'United Kingdom', 51.4694, -0.4503, 25, 'Europe/London'),
    (4, 'CDG', 'LFPG', 'Charles de Gaulle Airport', 'Paris', 'France', 49.0097, 2.5479, 119, 'Europe/Paris'),
    (5, 'SYD', 'YSSY', 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia', -33.9461, 151.1772, 21, 'Australia/Sydney'),
    (6, 'HND', 'RJTT', 'Tokyo Haneda Airport', 'Tokyo', 'Japan', 35.5533, 139.7811, 11, 'Asia/Tokyo'),
    (7, 'DXB', 'OMDB', 'Dubai International Airport', 'Dubai', 'United Arab Emirates', 25.2532, 55.3657, 62, 'Asia/Dubai'),
    (8, 'CAN', 'ZGGG', 'Guangzhou Baiyun International Airport', 'Guangzhou', 'China', 23.3925, 113.2986, 15, 'Asia/Shanghai'),
    (9, 'MEX', 'MMMX', 'Mexico City International Airport', 'Mexico City', 'Mexico', 19.4361, -99.0719, 2, 'America/Mexico_City'),
    (10, 'SYD', 'YSSY', 'Kingsford Smith International Airport', 'Sydney', 'Australia', -33.9461, 151.1772, 21, 'Australia/Sydney');


#INSERTING INTO AIRLINES TABLE;








