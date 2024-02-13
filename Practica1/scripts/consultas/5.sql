USE prac1;

PRINT '';

SELECT TOP 5
    ROW_NUMBER() OVER (ORDER BY SUM(total_deaths) DESC) AS Rank,
    Location.country as Country,
    SUM(total_deaths) AS TotalDeaths
FROM
    Tsunami
JOIN Location ON Tsunami.idLocation = Location.idLocation
GROUP BY
    Location.country
ORDER BY
    TotalDeaths DESC;


PRINT '';