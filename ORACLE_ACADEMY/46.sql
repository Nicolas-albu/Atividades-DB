
-- Quais funcionários da Oracle têm o mesmo ID de departamento que o departamento de TI?

SELECT FIRST_NAME || ' ' || LAST_NAME AS EMPLOYEE
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                       FROM DEPARTMENTS
                       WHERE DEPARTMENT_NAME = 'IT')
