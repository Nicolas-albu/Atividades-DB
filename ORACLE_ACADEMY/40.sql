
-- Quais song_ids da tabela d_play_list_items da DJs on Demand têm o mesmo event_id que 
-- song_id 45?

SELECT SONG_ID
FROM D_PLAY_LIST_ITEMS
WHERE EVENT_ID = (SELECT EVENT_ID
                  FROM D_PLAY_LIST_ITEMS
                  WHERE SONG_ID = 45)