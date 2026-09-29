USE SAAirwayDB
GO

SELECT b.ID AS BookingID, COUNT(t.ID) AS TicketsIssued
FROM Bookings b
JOIN Tickets t ON b.ID = t.BookingID
GROUP BY b.ID;