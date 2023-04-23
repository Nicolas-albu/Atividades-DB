
-- Use a sintaxe JOIN ON para consultar e exibir o ID, a cidade e o nome dos departamentos de todos os locais do Canadá.


SELECT D.DEPARTMENT_ID, L.CITY, D.DEPARTMENT_NAME
FROM DEPARTMENTS D JOIN LOCATIONS L ON (L.COUNTRY_ID = 'CA');