
-- Exiba o ID, o sobrenome, o ID do departamento, o nome do departamento e a data de 
-- contratação de todos os funcionários que foram contratados em 7 de junho de 1994

SELECT E.EMPLOYEE_ID,
       E.DEPARTMENT_ID,
       D.DEPARTMENT_NAME,
       E.HIRE_DATE
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE TO_CHAR(E.HIRE_DATE, 'DDMMYYYY') = '07061994';