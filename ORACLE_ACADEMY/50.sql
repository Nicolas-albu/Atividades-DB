
-- Quais eventos da DJs on Demand têm o mesmo código de tema que o ID de evento = 100?

SELECT NAME, DESCRIPTION, EVENT_DATE
FROM D_EVENTS
WHERE THEME_CODE = (SELECT THEME_CODE
                    FROM D_EVENTS
                    WHERE ID = 100);