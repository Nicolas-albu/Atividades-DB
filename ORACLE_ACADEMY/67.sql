
-- A DJs on Demand tem dois novos eventos agendados. Um deles é um campeonato de futebol de
-- outono e o outro é uma festa ambientada nos 60. Os clientes da DJs on Demand solicitaram as
-- músicas mostradas na tabela para seus eventos. Adicione essas músicas à tabela copy_d_songs
-- usando uma instrução INSERT implícita.


CREATE TABLE copy_d_songs
AS (SELECT * FROM d_songs);

DESC copy_d_songs;

SELECT *
FROM copy_d_songs;

-- (ID, TITLE, DURATION, ARTIST, TYPE_CODE)
INSERT INTO copy_d_songs
VALUES
    (52, 'Surfing Summer', 'Not known', null, 12);

INSERT INTO copy_d_songs
VALUES
    (53, 'Victory Victory', '5 min', null, 12);
