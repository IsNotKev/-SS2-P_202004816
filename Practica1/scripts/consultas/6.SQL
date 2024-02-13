USE prac1;

PRINT '';

SELECT TOP 5
    ROW_NUMBER() OVER (ORDER BY SUM(total_deaths) DESC) AS Rank,
    Time.year as Year,
    SUM(total_deaths) AS TotalDeaths
FROM
    Tsunami
JOIN Time ON Tsunami.idTime = Time.idTime
GROUP BY
    Time.year
ORDER BY
    TotalDeaths DESC;


PRINT '';