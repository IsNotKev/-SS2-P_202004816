USE prac1;

PRINT '';

SELECT
    u.country AS Pais,
    CASE
        WHEN COUNT(ts.total_damage) = 0 THEN 'Informacion no disponible'
        ELSE CAST(AVG(COALESCE(ts.total_damage, 0)) AS VARCHAR(50))
    END AS PromedioTotalDamage
FROM
    tsunami ts
INNER JOIN
    Location u ON ts.idLocation = u.idLocation
GROUP BY
    u.country;

PRINT '';