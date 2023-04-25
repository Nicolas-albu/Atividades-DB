
-- Crie uma consulta para retornar todos os funcionários que têm o mesmo id de cargo que Rajs e 
-- que foram contratados depois de Davies.

SELECT *
FROM EMPLOYEES
WHERE JOB_ID = (SELECT JOB_ID
                FROM EMPLOYEES
                WHERE UPPER(LAST_NAME) = 'RAJS')
AND HIRE_DATE > (SELECT HIRE_DATE
                 FROM EMPLOYEES
                 WHERE UPPER(LAST_NAME) = 'DAVIES')
ORDER BY FIRST_NAME, LAST_NAME;