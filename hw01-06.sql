.open CTA_L_daily_ridership.db

SELECT Date(Ride_Date), SUM(Num_Riders) FROM Ridership
WHERE Ride_Date LIKE '____-01-01%'
GROUP BY Ride_Date
ORDER BY Ride_Date desc
LIMIT 6