
-- Exiba o nome do país, o ID e o nome da região Américas.

SELECT R.REGION_NAME, R.REGION_ID
FROM REGIONS R
WHERE LOWER(R.REGION_NAME) = 'americas';