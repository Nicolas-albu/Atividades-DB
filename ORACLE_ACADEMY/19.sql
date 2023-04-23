
-- Usando o banco de dados da Global Fast Foods, exiba a descrição e a data de designação dos 
-- turnos, mesmo que não haja uma data designada para cada descrição de turno

SELECT S.DESCRIPTION,
       A.SHIFT_ASSIGN_DATE
FROM F_SHIFTS S LEFT OUTER JOIN F_SHIFT_ASSIGNMENTS A
USING (CODE);