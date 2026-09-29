Use SAAirwayDB
GO

CREATE TABLE Airports
(
	Airport INT PRIMARY KEY IDENTITY,
	AirportName NVARCHAR(100), 
	City NVARCHAR(100)
);

CREATE TABLE Passengers
(
	id INT PRIMARY KEY IDENTITY,
	FullName NVARCHAR (100),
	Email NVARCHAR (100)
);

CREATE TABLE Flights
(
	ID INT PRIMARY KEY IDENTITY,
    FlightNumber NVARCHAR(20),
    DepartureAirportID INT FOREIGN KEY REFERENCES Airports(Airport),
    ArrivalAirportID INT FOREIGN KEY REFERENCES Airports(Airport),
    DepartureTime DATETIME,
    ArrivalTime DATETIME
);

CREATE TABLE Bookings
(
	ID INT PRIMARY KEY IDENTITY,
    FlightID INT FOREIGN KEY REFERENCES Flights(ID),
    Status NVARCHAR(20)
);

CREATE TABLE BookingPassengers (
    BookingID INT FOREIGN KEY REFERENCES Bookings(ID),
    PassengerID INT FOREIGN KEY REFERENCES Passengers(id),
    PRIMARY KEY (BookingID, PassengerID)
);



CREATE TABLE Tickets 
(
    ID INT PRIMARY KEY IDENTITY,
    BookingID INT FOREIGN KEY REFERENCES Bookings(ID),
    SeatNumber NVARCHAR(10)
);

CREATE TABLE Payments (
    ID INT PRIMARY KEY IDENTITY,
    BookingID INT FOREIGN KEY REFERENCES Bookings(ID),
    Amount DECIMAL(10,2),
    Status NVARCHAR(20)
);

INSERT INTO Airports (AirportName, City) VALUES
('O.R. Tambo International', 'Johannesburg'),
('Cape Town International', 'Cape Town'),
('King Shaka International', 'Durban');

INSERT INTO Passengers (FullName, Email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Michael Johnson', 'michael.j@example.com'),
('Sarah Williams', 'sarah.w@example.com'),
('David Brown', 'david.b@example.com');

INSERT INTO Flights (FlightNumber, DepartureAirportID, ArrivalAirportID, DepartureTime, ArrivalTime) VALUES
('SA101', 1, 2, '2026-10-01 08:00', '2026-10-01 10:00'),
('SA102', 2, 1, '2026-10-02 09:00', '2026-10-02 11:00'),
('SA103', 1, 3, '2026-10-03 07:30', '2026-10-03 09:00'),
('SA104', 3, 2, '2026-10-04 12:00', '2026-10-04 14:00'),
('SA105', 2, 3, '2026-10-05 15:00', '2026-10-05 16:30');

INSERT INTO Bookings (FlightID, Status) VALUES
(1, 'Confirmed'),
(2, 'Pending'),
(3, 'Confirmed');

INSERT INTO Tickets (BookingID, SeatNumber) VALUES
(1, '12A'),
(1, '12B'),
(2, '14C'),
(3, '15D'),
(3, '15E');

INSERT INTO BookingPassengers (BookingID, PassengerID) VALUES
(1, 1), (1, 2), 
(2, 3),         
(3, 4), (3, 5);

INSERT INTO Payments (BookingID, Amount, Status) VALUES
(1, 2500.00, 'Paid'),
(2, 1800.00, 'Pending'),
(3, 2200.00, 'Paid');



