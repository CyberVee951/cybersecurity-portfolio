-- SQL Security Investigation
-- Scenario: Review simulated authentication activity for potentially suspicious login behavior.
-- Dataset: Fictional login records created for independent cybersecurity practice.
-- Skills: SELECT, WHERE, AND, OR, NOT, LIKE, pattern matching, and security-focused filtering.

-- Investigation 1: Failed login attempts after business hours
-- Objective: Identify unsuccessful login attempts occurring after 18:00.

SELECT *
FROM login_attempts
WHERE login_time > '18:00'
AND success = 0;

-- Investigation 2: Login activity across two dates
-- Objective: Retrieve login attempts that occurred on either 2026-09-05 or 2026-09-06.

SELECT *
FROM login_attempts
WHERE login_date = '2026-09-05'
OR login_date = '2026-09-06';

-- Investigation 3: Login activity outside the United States
-- Objective: Identify login attempts originating from countries other than the USA.

SELECT *
FROM login_attempts
WHERE country NOT LIKE 'USA';

-- Investigation 4: Username pattern matching
-- Objective: Identify login attempts associated with usernames beginning with the letter "j".

SELECT *
FROM login_attempts
WHERE username LIKE 'j%';

-- Investigation 5: Successful login activity from Canada
-- Objective: Identify successful login attempts originating from Canada.

SELECT *
FROM login_attempts
WHERE country = 'Canada'
AND success = 1;


