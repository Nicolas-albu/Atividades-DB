
-- Quais títulos de CD foram produzidos no mesmo ano que “Party Music for All Occasions” ou 
-- “Carpe Diem”?

SELECT *
FROM D_CDS
WHERE YEAR IN (SELECT YEAR
               FROM D_CDS
               WHERE UPPER(TITLE) IN ('PARTY MUSIC FOR ALL OCCASIONS', 'CARPE DIEM'));