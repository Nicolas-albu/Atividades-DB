
-- Una as tabelas d_play_list_items, d_track_listings e d_cds da DJs on Demand com a sintaxe 
-- JOIN USING. Inclua o ID da música, o número do CD, o título e comentários na saída.

SELECT SONG_ID, CD_NUMBER, TITLE, COMMENTS
FROM d_play_list_items JOIN d_track_listings USING (SONG_ID) 
     JOIN d_cds USING (CD_NUMBER)
WHERE LOWER(PRODUCER) = 'djs on demand';