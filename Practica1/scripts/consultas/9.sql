USE prac1;

PRINT '';

SELECT TOP 5
    ROW_NUMBER() OVER (ORDER BY SUM(total_houses_damage) DESC) AS Rank,
    Location.country as Country,
    SUM(total_houses_damage) AS TotalHousesDamage
FROM
    Tsunami
JOIN Location ON Tsunami.idLocation = Location.idLocation
GROUP BY
    Location.country
ORDER BY
    SUM(total_houses_damage) DESC;


PRINT '';