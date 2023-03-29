-- Selecione uma lista que contenha o código e nome do projeto para todos os projetos
-- que possuam o texto ‘AMA’ em algum lugar de seu nome. Além disto, somente os
-- projetos cujo código tenham os números 21 como terceiro e quarto caractere devem
-- ser exibidos.

SELECT CD_PROJ, NM_PROJ
FROM FUNC
WHERE (NM_PROJ LIKE '%AMA%') 
    AND (CD_PROJ LIKE '__21')