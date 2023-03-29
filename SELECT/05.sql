-- Selecione uma lista que contenha o código e nome do projeto para todos os projetos
-- que possuam o texto ‘AMA’ em algum lugar de seu nome. Além disto, somente os
-- projetos cujo código tenham os números 21 como terceiro e quarto caractere devem
-- ser exibidos.

SELECT PROJ.CD_PROJ, PROJ.NM_PROJ
FROM PROJ
WHERE (PROJ.NM_PROJ LIKE '%AMA%') 
    AND (PROJ.CD_PROJ LIKE '__21')