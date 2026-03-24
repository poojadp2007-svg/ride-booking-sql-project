-- Insert Users
INSERT INTO Users VALUES
(1, 'Pooja', '9876543210'),
(2, 'Rahul', '9123456780');

-- Insert Drivers
INSERT INTO Drivers VALUES
(1, 'Amit', 'Car', 4.5),
(2, 'Suresh', 'Bike', 4.2);

-- Insert Rides
INSERT INTO Rides VALUES
(1, 1, 1, 'Pune Station', 'Hinjewadi', 300, 'Completed', '2026-03-20'),
(2, 2, 2, 'Shivaji Nagar', 'Baner', 150, 'Completed', '2026-03-21'),
(3, 1, 2, 'Aundh', 'Kothrud', 200, 'Pending', '2026-03-22');

-- Insert Payments
INSERT INTO Payments VALUES
(1, 1, 300, 'Cash'),
(2, 2, 150, 'Online');
