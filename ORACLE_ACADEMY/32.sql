-- Reescreva a consulta a seguir para obter o mesmo resultado:
-- SELECT DISTINCT MAX(song_id) 
-- FROM d_track_listings
-- WHERE track IN ( 1, 2, 3);

SELECT MAX(DISTINCT SONG_ID) 
FROM D_TRACK_LISTINGS
WHERE TRACK IN (1, 2, 3);
