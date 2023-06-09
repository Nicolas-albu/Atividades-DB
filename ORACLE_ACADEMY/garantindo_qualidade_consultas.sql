
SELECT *
FROM USER_TABLES
WHERE TABLE_NAME LIKE 'JO%'


SELECT SUBSTR(FIRST_NAME, 1, 1) || ' ' || LAST_NAME
FROM EMPLOYEES


SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS "Employee Name",
       E.EMAIL AS "Email"
FROM EMPLOYEES E
WHERE E.EMAIL LIKE '%IN%';


SELECT MIN(E.LAST_NAME) AS "First Last Name",
       MAX(E.LAST_NAME) AS "Last Last Name"
FROM EMPLOYEES E;


SELECT TO_CHAR(E.SALARY/4.33, '$9999.99') AS "Weekly Salary"
FROM EMPLOYEES E
WHERE E.SALARY/4 BETWEEN 700 AND 3000;


SELECT SUBSTR(E.FIRST_NAME, 1, 1) || ' ' || E.LAST_NAME AS "Employee Name",
       J.JOB_TITLE AS "Job"
FROM EMPLOYEES E NATURAL JOIN JOBS J;

WITH 
    MIN_RANGE_SALARY AS 
    (
    SELECT 
        MIN(MI_E.SALARY) AS MIN_SALARY
    FROM 
        EMPLOYEES   MI_E
    ),
    MAX_RANGE_SALARY AS
    (
    SELECT 
        MAX(MA_E.SALARY) AS MAX_SALARY
    FROM 
        EMPLOYEES   MA_E
    )
SELECT 
    SUBSTR(E.FIRST_NAME, 1, 1) || ' ' || E.LAST_NAME 
        AS "Employee Name",
    J.JOB_TITLE 
        AS "Job",
    MI_E.MIN_SALARY || ' - ' ||
    MA_E.MAX_SALARY 
        AS "Range Salary",
    E.SALARY 
        AS "Salary"
FROM 
     EMPLOYEES  E, 
     JOBS J, 
     MIN_RANGE_SALARY MI_E, 
     MAX_RANGE_SALARY MA_E
WHERE 
    E.JOB_ID = J.JOB_ID
AND
        

