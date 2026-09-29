USE SAAirwayDB
GO

SELECT f.FlightNumber, p.FullName
FROM Flights f
JOIN Bookings b ON f.ID = b.FlightID
JOIN BookingPassengers bp ON b.ID = bp.BookingID
JOIN Passengers p ON bp.PassengerID = p.id
ORDER BY f.FlightNumber;