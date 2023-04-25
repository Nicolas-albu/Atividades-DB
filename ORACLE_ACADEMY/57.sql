
-- Quais CDs de nossa coleção d_cds foram produzidos antes de “Carpe Diem”

SELECT *
FROM D_CDS
WHERE YEAR < ALL (SELECT YEAR
                  FROM D_CDS
                  WHERE UPPER(TITLE) = 'CARPE DIEM')
