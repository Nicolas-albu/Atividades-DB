
-- Crie um relatório que mostre a hierarquia do departamento de Lex De Haans. Inclua o 
-- sobrenome, o salário e o id do departamento no relatório.

-- PRIOR: ANTERIOR.
-- CONECTE A HIERARQUIA PELO ANTERIOR

SELECT E.LAST_NAME,
       TO_CHAR(E.SALARY, 'L999G990') AS SALARY,
       E.DEPARTMENT_ID
FROM EMPLOYEES E
START WITH UPPER(E.FIRST_NAME) = 'LEX'
CONNECT BY PRIOR EMPLOYEE_ID = MANAGER_ID;

