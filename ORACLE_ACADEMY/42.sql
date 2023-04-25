
-- Encontre o número da faixa da música que tem o mesmo número de CD que “Party Music for All 
-- Occasions”.

SELECT TRACK
FROM D_TRACK_LISTINGS
WHERE CD_NUMBER IN (SELECT CD_NUMBER
                    FROM D_CDS
                    WHERE UPPER(TITLE) = 'PARTY MUSIC FOR ALL OCCASIONS')