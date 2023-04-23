
-- Exiba o título do cargo, o nome, o sobrenome e o e-mail de todos os funcionários que trabalham 
-- no almoxarifado.

SELECT J.JOB_TITLE,
       E.FIRST_NAME,
       E.LAST_NAME,
       E.EMAIL
FROM EMPLOYEES E JOIN JOBS J USING (JOB_ID);