# SQL Security Investigation: Filtering Login Activity

## Overview

This project was completed as part of my Google Cybersecurity Certificate coursework. The exercise involved using SQL to investigate security-related login and employee data.

The objective was to identify potentially suspicious login activity and retrieve employee information needed for security updates.

## Skills Demonstrated

- SQL queries
- WHERE clauses
- AND, OR, and NOT operators
- LIKE operator and wildcard filtering
- Security-related data analysis
- Login activity investigation

## Investigation: Failed Login Attempts After Business Hours

As part of the security investigation, I needed to identify unsuccessful login attempts that occurred after 18:00. I queried the `log_in_attempts` table and used two conditions to isolate the relevant records.

```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = FALSE;
```

The `WHERE` clause filters the records to login attempts occurring after 18:00, while `AND success = FALSE` limits the results to unsuccessful login attempts. This allowed me to identify failed login activity occurring outside normal business hours.
