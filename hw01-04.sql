.open CTA_L_daily_ridership.db


SELECT SUM(Station_Name) FROM Stations
WHERE DATE() like '%2015%' AND Station_ID = (SELECT Station_ID FROM Stations WHERE Station_ID = '41300');
