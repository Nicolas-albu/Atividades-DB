-- . Examine a instrução SELECT a seguir e conclua-a para que retorne as informações last_name,
-- department_id e salary dos funcionários que têm pelo menos um subordinado. Nesse caso,
-- estamos procurando somente os gerentes. Na instrução SELECT parcialmente criada, a cláusula
-- WHERE funcionará conforme está. Ela está simplesmente verificando a existência de uma linha
-- na subconsulta.
-- SELECT (insira as colunas aqui)
-- FROM (insira o nome da tabela aqui) outer
-- WHERE 'x' IN (SELECT 'x'
--  FROM (insira o nome da tabela aqui) inner
--  WHERE inner(insira o nome da coluna aqui) = inner(insira o nome da coluna aqui)
-- Conclua a instrução classificando as linhas da coluna department_id.

-- SELECT DEPARTMENT_ID
-- FROM EMPLOYEES
-- WHERE EMPLOYEE_ID IN (SELECT MANAGER_ID
--                       FROM DEPARTMENTS
--                       WHERE MANAGER_ID IS NOT NULL)

SELECT
    E1.DEPARTMENT_ID,
    E1.LAST_NAME,
    E1.SALARY
FROM
    EMPLOYEES E1
WHERE
    E1.EMPLOYEE_ID IN (
        SELECT
            MANAGER_ID
        FROM
            DEPARTMENTS
        WHERE
            E1.EMPLOYEE_ID = MANAGER_ID
    )