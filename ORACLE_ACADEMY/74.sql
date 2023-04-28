
-- Agora que todas as informações de Kai Kim estão disponíveis, atualize o seu registro da Global 
-- Fast Foods para incluir o seguinte: Kai terá o mesmo gerente que Sue Doe. Ele não está 
-- qualificado para receber horas extras. Mantenha os valores referentes a treinamento, orçamento 
-- do gerente e meta do gerente como nulos.

UPDATE copy_f_staffs
SET manager_id = (SELECT manager_id
                  FROM copy_f_staffs
                  WHERE UPPER(FIRST_NAME || LAST_NAME) = 'SUEDOE')
WHERE UPPER(FIRST_NAME || LAST_NAME) = 'KAIKIM'; 