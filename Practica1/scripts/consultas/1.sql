USE prac1;

PRINT '';

SELECT
    (SELECT COUNT(*) FROM Temporal) AS TemporalCount,
    (SELECT COUNT(*) FROM Location) AS LocationCount,
    (SELECT COUNT(*) FROM Time) AS TimeCount,
    (SELECT COUNT(*) FROM Tsunami) AS TsunamiCount;

PRINT '';

