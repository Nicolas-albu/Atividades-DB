
-- Crie uma consulta que retorne os tipos de música jazz e pop. Crie uma subconsulta de várias 
-- linhas e use as tabelas d_songs e d_types. Inclua o id, o título, a duração e o nome do artista. 

SELECT ID, TITLE, DURATION, ARTIST
FROM D_SONGS
WHERE TYPE_CODE IN (SELECT CODE 
                    FROM D_TYPES
                    WHERE UPPER(DESCRIPTION) IN ('JAZZ', 'POP'))
