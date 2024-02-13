USE prac1;

PRINT '';

SELECT
    Location.country as Country,
    CASE
        WHEN COUNT(max_water_height) = 0 THEN 'Informacion no disponible'
        ELSE CAST(AVG(COALESCE(max_water_height, 0)) AS VARCHAR(50))
    END AS AvgMaxWaterHeight
FROM
    Tsunami
JOIN Location ON Tsunami.idLocation = Location.idLocation
GROUP BY
    Location.country
ORDER BY
    AVG(max_water_height) DESC;


PRINT '';