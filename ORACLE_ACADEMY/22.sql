-- Exiba os nomes e as datas de contratação de todos os funcionários que foram contratados antes 
-- de seus gerentes, além dos nomes e das datas de contratação dos gerentes. Identifique as 
-- colunas como Employee, Emp Hired, Manager e Mgr Hired, respectivamente

SELECT INITCAP(E.LAST_NAME || ', ' || E.FIRST_NAME) AS "Employee",
       E.HIRE_DATE AS "Emp Hired",
       INITCAP(M.LAST_NAME || ', ' || M.FIRST_NAME) AS "Manager",
       M.HIRE_DATE AS "Mgr Hired"
FROM EMPLOYEES E JOIN EMPLOYEES M 
ON (E.MANAGER_ID = M.EMPLOYEE_ID)
WHERE E.HIRE_DATE < M.HIRE_DATE;