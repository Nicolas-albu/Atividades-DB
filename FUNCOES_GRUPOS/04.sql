
-- Determine a quantidade de atividades diferentes por projeto.

-- SELECT COUNT(ATIV.CD_ATIV)
-- FROM ATIV;

SELECT CD_PROJ, COUNT(DISTINCT CD_ATIV)
FROM PRJATV
GROUP BY CD_PROJ;