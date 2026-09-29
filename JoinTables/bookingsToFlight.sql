USE SAAirwayDB
GO

SELECT p.FullName, f.FlightNumber, b.Status
FROM Passengers p
JOIN BookingPassengers bp ON p.id = bp.PassengerID
JOIN Bookings b ON bp.BookingID = b.ID
JOIN Flights f ON b.FlightID = f.ID;