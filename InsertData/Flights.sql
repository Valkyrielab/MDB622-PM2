USE SouthAfricaAirwaysDB
GO

INSERT INTO Flights (FlightNumber, DepartureAirportID, ArrivalAirportID, DepartureTime, ArrivalTime) VALUES
('SA101', 1, 2, '2026-10-01 08:00', '2026-10-01 10:00'),
('SA102', 2, 1, '2026-10-02 09:00', '2026-10-02 11:00'),
('SA103', 1, 3, '2026-10-03 07:30', '2026-10-03 09:00'),
('SA104', 3, 2, '2026-10-04 12:00', '2026-10-04 14:00'),
('SA105', 2, 3, '2026-10-05 15:00', '2026-10-05 16:30');