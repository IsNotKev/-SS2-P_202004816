USE prac1;

INSERT INTO Location(country)
(SELECT DISTINCT country FROM Temporal WHERE country IS NOT NULL);

INSERT INTO Time(year)
(SELECT DISTINCT year FROM Temporal WHERE year IS NOT NULL);

INSERT INTO Tsunami(idTime, idLocation, total_damage, total_deaths, total_houses_destroyed, 
                    total_houses_damage, max_water_height)
(SELECT (SELECT TOP 1 idTime FROM Time WHERE year = Temporal.year),
        (SELECT TOP 1 idLocation FROM Location WHERE country = Temporal.country),
        total_damage, total_deaths, total_houses_destroyed, total_houses_damage, max_water_height
FROM Temporal)


