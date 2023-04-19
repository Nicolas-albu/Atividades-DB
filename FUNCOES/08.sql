-- Deseja-se uma relação contendo nome completo dos funcionários. As informações
-- sobre salário devem ser “criptografadas” da seguinte forma:
-- a. 0,1 serão transformados na letra A
-- b. 2,3 serão transformados na letra B
-- c. 4,5,6 serão transformados na letra C
-- d. 7,8,9 serão transformados na letra D

SELECT FUNC.NM_FUNC || ' ' || FUNC.NM_SOBRENOME AS "NOME COMPLETO",
       FUNC.VL_SAL AS SALÁRIO,
       REPLACE(
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(FUNC.VL_SAL, 9, 'D'), 
                                    8, 'D'),
                                7, 'D'),
                            6, 'C'),
                        5, 'C'),
                    4, 'C'),
                3, 'B'),
            2, 'B'),
        1, 'A'),
    0, 'A') AS "SALÁRIO CRIPTOGRAFADO"
FROM FUNC