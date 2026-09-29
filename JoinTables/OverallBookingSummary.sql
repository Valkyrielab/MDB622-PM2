USE SAAirwayDB
GO

SELECT b.ID AS BookingID, f.FlightNumber, COUNT(bp.PassengerID) AS PassengerCount, SUM(pay.Amount) AS TotalPaid
FROM Bookings b
JOIN Flights f ON b.FlightID = f.ID
JOIN BookingPassengers bp ON b.ID = bp.BookingID
JOIN Payments pay ON b.ID = pay.BookingID
GROUP BY b.ID, f.FlightNumber;