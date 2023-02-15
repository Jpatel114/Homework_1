.open CTA_L_daily_ridership.db


SELECT SUM(Num_Riders) FROM Ridership
WHERE DATE(Ride_Date) like '%2019%' AND Station_ID = (SELECT Station_ID FROM Stations WHERE Station_Name = 'Midway Airport');

SELECT SUM(Num_Riders) FROM Ridership
WHERE DATE(Ride_Date) like '%2020%' AND Station_ID = (SELECT Station_ID FROM Stations WHERE Station_Name = 'Midway Airport');