
-- Qual funcionário da Global Fast Foods ganha o menor salário? Dica: você pode usar uma 
-- subconsulta de uma única linha ou de várias linhas

SELECT INITCAP(LAST_NAME || ', ' || FIRST_NAME) AS EMPLOYEE
FROM F_STAFFS
WHERE SALARY = (SELECT MIN(SALARY)
                FROM F_STAFFS);