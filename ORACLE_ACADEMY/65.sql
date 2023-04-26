
-- A DJs on Demand acabou de comprar quatro novos CDs. Use uma instrução INSERT explícita
-- para adicionar cada CD à tabela copy_d_cds. Após concluir as entradas, execute uma instrução
-- SELECT * para verificar seu trabalho.

CREATE TABLE copy_d_cds
AS (SELECT * FROM d_cds);

DESC COPY_D_CDS;

SELECT *
FROM copy_d_cds;

INSERT INTO copy_d_cds
     (CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES
     (97, 'Celebrate the Day', 'R & B Inc.', '2003');

INSERT INTO copy_d_cds
     (CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES
     (99, 'Party Music', 'Old Town Records', '2004'),

INSERT INTO copy_d_cds
     (CD_NUMBER, TITLE, PRODUCER, YEAR)
VALUES
     (100, 'Best of Rock and Roll', 'Old Town Records', '2004');