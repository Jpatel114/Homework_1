SELECT 'Hello World';

.open CTA_L_daily_ridership.db

SELECT COUNT(Station_Name)
FROM  Stations;

SELECT Station_Name 
FROM Stations
ORDER BY Station_Name;

SELECT Station_Name 
FROM Stations
WHERE Station_ID = '41240';

SELECT SUM(Num_Riders) FROM Ridership
WHERE DATE(Ride_Date) like '%2015%' AND Station_ID ='41300';

SELECT SUM(Num_Riders) FROM Ridership
WHERE DATE(Ride_Date) like '%2019%' AND Station_ID = (SELECT Station_ID FROM Stations WHERE Station_Name = 'Midway Airport');

SELECT SUM(Num_Riders) FROM Ridership
WHERE DATE(Ride_Date) like '%2020%' AND Station_ID = (SELECT Station_ID FROM Stations WHERE Station_Name = 'Midway Airport');


SELECT Date(Ride_Date), SUM(Num_Riders) FROM Ridership
WHERE Ride_Date LIKE '____-01-01%'
GROUP BY Ride_Date
ORDER BY Ride_Date desc
LIMIT 6