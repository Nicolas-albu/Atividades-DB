
-- Exiba o nome, o sobrenome, o ID do gerente e o percentual de comissão de todos os funcionários dos departamentos 80 e 90;
-- Em uma 5a coluna chamada “Avaliação”, exiba novamente o ID do gerente;
-- Se os funcionários não tiverem um gerente, exiba o percentual de comissão;
-- Se eles não tiverem uma comissão, exiba 99999.

SELECT INITCAP(E.LAST_NAME || ', ' || E.FIRST_NAME) AS "Name",
       E.MANAGER_ID AS "Manager ID",
       CASE E.DEPARTMENT_ID
            WHEN 80 THEN E.COMMISSION_PCT
            WHEN 90 THEN E.COMMISSION_PCT
            ELSE 99999
        END AS "Commission PCT",
        CASE
            WHEN E.MANAGER_ID IS NOT NULL THEN E.MANAGER_ID
            WHEN E.COMMISSION_PCT IS NOT NULL THEN E.COMMISSION_PCT
            ELSE 999999
        END AS "Avaliation"
FROM EMPLOYEES E;