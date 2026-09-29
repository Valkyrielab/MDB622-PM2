USE SouthAfricaAirway
GO

SELECT b.ID AS BookingID, f.FlightNumber, b.Status
FROM Bookings b
JOIN Flights f ON b.FlightID = f.ID;