
-- Quais funcionários têm salários inferiores aos dos programadores do departamento de TI?

SELECT *
FROM EMPLOYEES
WHERE SALARY < ALL (SELECT SALARY
                    FROM EMPLOYEES
                    WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID
                                           FROM DEPARTMENTS
                                           WHERE UPPER(DEPARTMENT_NAME) = 'IT'));
