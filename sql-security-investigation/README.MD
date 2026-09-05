# SQL Security Investigation: Simulated Login Activity

## Overview

This project is an independent cybersecurity practice exercise using a fictional login dataset created in DB Browser for SQLite. The objective is to investigate simulated authentication activity using SQL and identify patterns such as failed after-hours logins, activity across specific dates, logins outside the United States, and username patterns. 

The objective was to identify potentially suspicious login activity and retrieve employee information needed for security updates.

## Skills Demonstrated

- SQL queries
- WHERE clauses
- AND and OR operators
- NOT operator
- LIKE operator and wildcard filtering
- Boolean-style filtering with 0 and 1
- Security-focused data analysis
- Login activity investigation
- Working with a fictional SQLite dataset

## Investigation 1: Failed Login Attempts After Business Hours

I created simulated login records and used SQL to identify unsuccessful login attempts occurring after 18:00.

```sql
SELECT *
FROM login_attempts
WHERE login_time > '18:00'
AND success = 0;
```

## Investigation 2: Login Activity Across Two Dates

I used the `OR` operator to retrieve login attempts that occurred on either September 5, 2026 or September 6, 2026.

```sql
SELECT *
FROM login_attempts
WHERE login_date = '2026-09-05'
OR login_date = '2026-09-06';
```

## Investigation 3: Login Activity Outside the United States

I used `NOT` with `LIKE` to identify login attempts originating from countries other than the USA.

```sql
SELECT *
FROM login_attempts
WHERE country NOT LIKE 'USA';
```

## Investigation 4: Username Pattern Matching

I used `LIKE` with the `%` wildcard to identify usernames beginning with the letter `j`.

```sql
SELECT *
FROM login_attempts
WHERE username LIKE 'j%';
```

## Investigation 5: Successful Login Activity from Canada

I combined a country filter with login status to identify successful login attempts originating from Canada.

```sql
SELECT *
FROM login_attempts
WHERE country = 'Canada'
AND success = 1;
```

## Project Files

- `investigation_queries.sql` — Contains the documented SQL investigations used in this project.
- `security_login_investigation.db` — SQLite database containing the fictional login dataset used for analysis.
```

## Key Takeaways

This project reinforced how SQL can be used to investigate authentication activity by filtering records based on time, login status, location, date, and username patterns. Building the fictional dataset myself also helped strengthen my understanding of how query logic behaves across different test cases.


