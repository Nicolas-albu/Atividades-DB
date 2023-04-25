
-- Quais são os nomes dos membros das equipes da Global Fast Foods cujas equipes são de um 
-- tipo diferente da de Bob Miller

SELECT FIRST_NAME || ' ' || LAST_NAME
FROM F_STAFFS
WHERE UPPER(FIRST_NAME || LAST_NAME) != (SELECT UPPER(FIRST_NAME || LAST_NAME)
                                         FROM F_STAFFS
                                         WHERE UPPER(FIRST_NAME) = 'BOB'
                                         AND UPPER(LAST_NAME) = 'MILLER')