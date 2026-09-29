USE SAAirwayDB
GO

-- Show all passengers
SELECT * FROM Passengers;

-- Show all flights
SELECT * FROM Flights;

-- Show all bookings with their status
SELECT b.ID AS BookingID, f.FlightNumber, b.Status
FROM Bookings b
JOIN Flights f ON b.FlightID = f.ID;

-- Show all payments
SELECT * FROM Payments;

-- Flights departing from Johannesburg
SELECT f.FlightNumber, f.DepartureTime, a.City AS DepartureCity
FROM Flights f
JOIN Airports a ON f.DepartureAirportID = a.Airport
WHERE a.City = 'Johannesburg';

-- Flights arriving in Cape Town
SELECT f.FlightNumber, f.ArrivalTime, a.City AS ArrivalCity
FROM Flights f
JOIN Airports a ON f.ArrivalAirportID = a.Airport
WHERE a.City = 'Cape Town';
