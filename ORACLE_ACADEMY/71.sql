
-- Adicione os novos clientes mostrados a seguir à tabela copy_f_customers. É possível que você já 
-- tenha adicionado Katie Hernandez. Você será capaz de adicionar todos esses registros com 
-- sucesso?
-- ID 
-- FIRST_NAME
-- LAST_NAME
-- ADDRESS 
-- CITY 
-- STATE 
-- ZIP 
-- PHONE_NUMBER

CREATE TABLE copy_f_customers
AS (SELECT * FROM f_customers);

SELECT *
FROM copy_f_customers;

-- 145 
-- Katie 
-- Hernandez 
-- 92 Chico Way
-- Los Angeles
-- CA 
-- 98008 
-- 8586667641

INSERT INTO copy_f_customers
    (id, first_name, last_name, address, city, state, zip, phone_number)
VALUES
    (145, 'Katie', 'Hernandez', '92 Chico Way', 'Los Angeles', 'CA', 98008, 8586667641);

-- 225
-- Daniel 
-- Spode 
-- 1923 Silverado
-- Denver 
-- CO 
-- 80219 
-- 7193343523

INSERT INTO copy_f_customers
    (id, first_name, last_name, address, city, state, zip, phone_number)
VALUES
    (225, 'Daniel', 'Spode', '1923 Silverado', 'Denver', 'CO', 80219, 7193343523);

-- 230 
-- Adam 
-- Zurn 
-- 5 Admiral Way
-- Seattle 
-- WA 
-- null
-- 4258879009

INSERT INTO copy_f_customers
    (id, first_name, last_name, address, city, state, zip, phone_number)
VALUES
    (230, 'Adam', 'Zurn', '5 Admiral Way', 'Seattle', 'WA', 0, 4258879009);