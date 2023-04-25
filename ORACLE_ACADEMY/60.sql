
-- Qual título de música tem uma duração maior do que todos os títulos com código de tipo 77?

SELECT TITLE, DURATION
FROM D_SONGS
WHERE REPLACE(DURATION, 'min', '') > ALL (SELECT DURATION
                                          FROM EMPLOYEES
                                          WHERE TYPE_CODE = 77);
