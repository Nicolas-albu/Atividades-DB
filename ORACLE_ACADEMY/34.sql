
-- Crie uma consulta que retornará a média dos salários máximos de cada departamento da tabela 
-- employees

SELECT TO_CHAR(AVG(MAX(SALARY)), 'L999G990D00') AS AVERAGE_MAX_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
