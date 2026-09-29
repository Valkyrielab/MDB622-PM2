USE SAAirwayDB
GO

DELETE FROM BookingPassengers WHERE BookingID = 1;
DELETE FROM Tickets WHERE BookingID = 1;
DELETE FROM Payments WHERE BookingID = 1;
DELETE FROM Bookings WHERE ID = 1