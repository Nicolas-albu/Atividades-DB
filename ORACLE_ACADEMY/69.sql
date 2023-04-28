
-- Monique Tuttle, gerente da Global Fast Foods, enviou um memorando solicitando uma alteração 
-- imediata dos preços. O preço de um milk-shake de morango aumentará de $3.59 para $3.75, e o 
-- das batatas fritas, para $1.20. Faça essas alterações na tabela copy_f_food_items.

CREATE TABLE copy_f_food_items
AS (SELECT * FROM f_food_items);

SELECT *
FROM copy_f_food_items;

UPDATE copy_f_food_items
SET price = 3.75
WHERE food_item_number = (SELECT food_item_number
                          FROM copy_f_food_items
                          WHERE UPPER(DESCRIPTION) = 'STRAWBERRY SHAKE');

UPDATE copy_f_food_items
SET price = 1.20
WHERE food_item_number = (SELECT food_item_number
                          FROM copy_f_food_items
                          WHERE UPPER(DESCRIPTION) = 'FRIES');