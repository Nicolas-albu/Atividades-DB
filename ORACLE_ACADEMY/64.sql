-- Usando uma cláusula WITH, crie uma instrução SELECT para listar o job_title dos cargos cujo
-- salário máximo é mais da metade do salário máximo de toda a empresa. Nomeie a subconsulta
-- como MAX_CALC_SAL. Nomeie as colunas do resultado como JOB_TITLE e JOB_TOTAL e
-- classifique o resultado em ordem decrescente em JOB_TOTAL.
-- Dica: examine a tabela de cargos. Você precisará unir as tabelas JOBS e EMPLOYEES para
-- exibir o job_title

-- WITH MAX_SALARY AS
--     (SELECT MAX(SALARY)
--     FROM EMPLOYEES),
--     MAX_CALC_SAL AS
--     (SELECT J.JOB_TITLE
--     FROM JOBS J INNER JOIN EMPLOYEES E USING (JOB_ID)
--     HAVING MAX(E.SALARY) > MAX_SALARY/2)
-- SELECT MAX_CALC_SAL,
--        COUNT(*) AS JOB_TOTAL
-- FROM EMPLOYEES
-- ORDER BY 2 DESC;

WITH MAX_CALC_SAL AS (
    SELECT
        J.JOB_TITLE,
        E.EMPLOYEE_ID
    FROM
        JOBS         J
        INNER JOIN EMPLOYEES E
        USING (JOB_ID)
    GROUP BY
        J.JOB_TITLE,
        E.EMPLOYEE_ID
    HAVING
        MAX(E.SALARY) > (
            SELECT
                MAX(SALARY)
            FROM
                EMPLOYEES
        )/2
)
SELECT
    MX_SAL.JOB_TITLE AS JOB_TITLE,
    COUNT(*)         AS JOB_TOTAL
FROM
    EMPLOYEES    E
    INNER JOIN MAX_CALC_SAL MX_SAL
    ON (E.EMPLOYEE_ID = MX_SAL.EMPLOYEE_ID)
GROUP BY
    MX_SAL.JOB_TITLE
ORDER BY
    2 DESC;