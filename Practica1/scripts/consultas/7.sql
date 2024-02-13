USE prac1;

PRINT '';

SELECT TOP 5
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS Rank,
    tm.year AS Year,
    COUNT(*) AS TsunamiCount
FROM
    Tsunami t
JOIN Time tm ON t.idTime = tm.idTime
GROUP BY
    tm.year
ORDER BY
    TsunamiCount DESC;


PRINT '';