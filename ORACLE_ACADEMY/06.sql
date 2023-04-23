
-- Una as tabelas d_play_list_items, d_track_listings e d_cds da DJs on Demand com a sintaxe 
-- JOIN USING. Inclua o ID da música, o número do CD, o título e comentários na saída.

SELECT SONG_ID, CD_NUMBER, TITLE, COMMENTS
FROM D_PLAY_LIST_ITEMS JOIN D_TRACK_LISTINGS 
USING (SONG_ID) 
JOIN D_CDS USING (CD_NUMBER);