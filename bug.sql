```sql
SELECT * FROM employees WHERE department_id = (SELECT id FROM departments WHERE name = 'Sales' LIMIT 1);
```
This SQL query might fail if the `departments` table has multiple departments named 'Sales'. The `LIMIT 1` clause only retrieves one department ID, which might not represent all departments named 'Sales'.  If there are multiple 'Sales' departments, the query will only return employees from one of them.