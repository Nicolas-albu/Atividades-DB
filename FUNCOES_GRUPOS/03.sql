
-- Determine quantos funcionários são gerentes de departamento (sem listá-los).

SELECT COUNT(F.CD_MAT)
FROM FUNC F INNER JOIN DEPTO D 
     ON (F.CD_MAT = D.CD_GERENTE);


SELECT COUNT(DISTINCT D.CD_GERENTE)
FROM DEPTO D;