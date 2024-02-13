USE prac1;

SET QUOTED_IDENTIFIER OFF; 
GO
BULK INSERT Temporal
FROM 'C:\Users\kevin\Escritorio\[SS2]Practica1_202004816\scripts\historial_tsumamis_v2.csv'
WITH
(
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '0x0a',
    FIRSTROW = 2
);