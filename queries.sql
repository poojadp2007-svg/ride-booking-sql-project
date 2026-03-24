-- 1. Total number of rides
SELECT COUNT(*) AS total_rides FROM Rides;

-- 2. Total earnings by each driver
SELECT d.name, SUM(r.fare) AS total_earnings
FROM Rides r
JOIN Drivers d ON r.driver_id = d.driver_id
GROUP BY d.name;

-- 3. List all completed rides
SELECT * FROM Rides
WHERE status = 'Completed';

-- 4. Find most active driver
SELECT driver_id, COUNT(*) AS total_rides
FROM Rides
GROUP BY driver_id
ORDER BY total_rides DESC
LIMIT 1;

-- 5. User ride history
SELECT u.name, r.pickup_location, r.drop_location, r.fare
FROM Rides r
JOIN Users u ON r.user_id = u.user_id;

-- 6. Total revenue generated
SELECT SUM(fare) AS total_revenue FROM Rides;

-- 7. Average ride fare
SELECT AVG(fare) AS avg_fare FROM Rides;

-- 8. Pending rides
SELECT * FROM Rides
WHERE status = 'Pending';
