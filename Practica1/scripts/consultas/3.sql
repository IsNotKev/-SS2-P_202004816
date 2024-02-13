USE prac1;

PRINT '';

DECLARE @sqlQuery NVARCHAR(MAX)

SET @sqlQuery = N'
SELECT 
    Country,
    ISNULL(CONVERT(VARCHAR(10), [1]), ''N/D'') AS Year1,
    ISNULL(CONVERT(VARCHAR(10), [2]), ''N/D'') AS Year2,
    ISNULL(CONVERT(VARCHAR(10), [3]), ''N/D'') AS Year3,
    ISNULL(CONVERT(VARCHAR(10), [4]), ''N/D'') AS Year4,
    ISNULL(CONVERT(VARCHAR(10), [5]), ''N/D'') AS Year5
FROM (
    SELECT
        l.country AS Country,
        ti.year AS TsunamiYear,
        ROW_NUMBER() OVER (PARTITION BY l.country ORDER BY ti.year) AS YearRank
    FROM
        Tsunami t
    JOIN Location l ON t.idLocation = l.idLocation
    JOIN Time ti ON t.idTime = ti.idTime
) AS RankedTsunamis
PIVOT (
    MAX(TsunamiYear)
    FOR YearRank IN ([1], [2], [3], [4], [5])
) AS PivotTable'

EXEC sp_executesql @sqlQuery

PRINT '';
