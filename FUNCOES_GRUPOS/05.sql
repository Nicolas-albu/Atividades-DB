
-- Deseja-se obter uma lista de todos os cargos que possuam mais de duas
-- funcionárias (sexo feminino).

SELECT FUNC.NR_CARGO
FROM FUNC
WHERE FUNC.IN_SEXO = 'F'
HAVING COUNT(FUNC.CD_MAT) > 2;
GROUP BY FUNC.NR_CARGO;

SELECT FUNC.NR_CARGO, COUNT(*)
FROM FUNC
WHERE FUNC.IN_SEXO = 'F'
HAVING COUNT(*) > 2
GROUP BY FUNC.NR_CARGO;