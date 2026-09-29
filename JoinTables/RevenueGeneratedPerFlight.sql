USE SAAirwayDB
GO

SELECT f.FlightNumber, SUM(pay.Amount) AS TotalRevenue
FROM Flights f
JOIN Bookings b ON f.ID = b.FlightID
JOIN Payments pay ON b.ID = pay.BookingID
GROUP BY f.FlightNumber;