
-- Liste os eventos da DJs on Demand cujo tema tem o mesmo código que “Tropical”.

SELECT *
FROM D_EVENTS
WHERE THEME_CODE IN (SELECT CODE
                     FROM D_THEMES
                     WHERE UPPER(DESCRIPTION) = 'TROPICAL');