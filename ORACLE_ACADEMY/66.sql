
-- Adicione os eventos do novo cliente à tabela copy_d_events. O custo de cada evento não foi
-- determinado nessa data.
-- ID Name Event_
-- Date
-- Description Cost Venue_
-- ID
-- Package_
-- Code
-- Theme_
-- Code
-- Client_
-- Number
-- 110 Ayako
-- Anniversary
-- 07-Jul2004
-- Party for 50,
-- sixties
-- dress,
-- decorations
-- 245 79 240 6655
-- 115 Neuville
-- Sports
-- Banquet
-- 09-
-- Sep2004
-- Barbecue at
-- residence,
-- college
-- alumni, 100
-- people
-- 315 87 340 6689

CREATE TABLE copy_d_events
AS (SELECT * FROM d_events);

DESC copy_d_events

SELECT * FROM copy_d_events

INSERT INTO copy_d_events
    (ID, 
    NAME, 
    EVENT_DATE, 
    DESCRIPTION, 
    COST, 
    VENUE_ID, 
    PACKAGE_CODE, 
    THEME_CODE, 
    CLIENT_NUMBER)
VALUES
    (110, 
    'Ayako Anniversary', 
    '07-Jul-2004', 
    'Party for 50, sixties dress, decorations', 
    0, 
    245, 79, 
    240, 6655);

    
INSERT INTO copy_d_events
    (ID, 
    NAME, 
    EVENT_DATE, 
    DESCRIPTION, 
    COST, 
    VENUE_ID, 
    PACKAGE_CODE, 
    THEME_CODE, 
    CLIENT_NUMBER)
VALUES
    (115, 
    'Neuville Sports Banquet', 
    '09-Sep-2004', 
    'Barbecue at residence, college alumni, 100 people', 
    0, 
    315, 87, 
    340, 6689);