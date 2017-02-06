SELECT COUNT(*) FROM planes
WHERE speed IS NOT NULL;

SELECT MAX(speed) FROM planes;

SELECT MIN(speed) FROM planes;

SELECT SUM(distance) from flights
WHERE year = '2013' AND month = '1';

SELECT SUM(distance) from flights
WHERE year = '2013' AND month = '1' AND tailnum IS NULL;

SELECT SUM(distance), manufacturer from flights 
INNER JOIN planes 
ON flights.tailnum = planes.tailnum
WHERE flights.year = '2013' and month = '7' and day = '5' 
GROUP BY manufacturer;

SELECT SUM(distance), manufacturer from flights 
LEFT OUTER JOIN planes 
ON flights.tailnum = planes.tailnum
WHERE flights.year = '2013' and month = '7' and day = '5' 
GROUP BY manufacturer;

SELECT SUM(distance), month from flights
WHERE year = '2013'
GROUP BY month ASC;