USE prac1;

PRINT '';

SELECT ti.year AS Anio, COUNT(*) AS Cantidad_Tsunamis
FROM Tsunami t
JOIN Time ti ON t.idTime = ti.idTime
GROUP BY ti.year
ORDER BY ti.year;

PRINT '';