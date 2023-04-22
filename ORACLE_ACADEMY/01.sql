
-- Com base na tabela d_songs da DJs on Demand, crie uma consulta que substitua as músicas de 
-- dois minutos de duração por “shortest” e as de dez minutos por “longest”. Identifique a coluna de 
-- saída como “Play Times”.

SELECT CASE TRIM(REPLACE(SONG.DURATION, 'min', ''))
            WHEN '2' THEN 'shortest'
            WHEN '10' THEN 'longest'
            ELSE NULL
       END AS "Play Times"
FROM D_SONGS SONG;