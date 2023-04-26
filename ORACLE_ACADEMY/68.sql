
-- 4. Adicione os dois novos clientes à tabela copy_d_clients. Use uma instrução INSERT implícita ou
-- explícita.
-- Client_Number First_Name Last_Name Phone Email
-- 6655 Ayako Dahish 3608859030 dahisha@harbor.net
-- 6689 Nick Neuville 9048953049 nnicky@charter.net

-- Table	Column	Data Type	Length	Precision	Scale	Primary Key	Nullable	Default	Comment
-- COPY_D_CLIENTS	CLIENT_NUMBER	NUMBER	-	5	0	-	nullable	-	-
--  	FIRST_NAME	VARCHAR2	25	-	-	-	-	-	-
--  	LAST_NAME	VARCHAR2	30	-	-	-	-	-	-
--  	PHONE	NUMBER	-	15	0	-	-	-	-
--  	EMAIL	VARCHAR2	50	-	-	-	nullable	-	-

CREATE TABLE copy_d_clients
AS (SELECT * FROM d_clients);

DESC copy_d_clients;

SELECT *
FROM copy_d_clients;

INSERT INTO copy_d_clients
    (CLIENT_NUMBER, FIRST_NAME, LAST_NAME, PHONE, EMAIL)
VALUES
    (6655, 'Ayako', 'Dahish', 3608859030, 'dahisha@harbor.net');

INSERT INTO copy_d_clients
    (CLIENT_NUMBER, FIRST_NAME, LAST_NAME, PHONE, EMAIL)
VALUES
    (6689, 'Nick', 'Neuville', 9048953049, 'nnicky@charter.net');