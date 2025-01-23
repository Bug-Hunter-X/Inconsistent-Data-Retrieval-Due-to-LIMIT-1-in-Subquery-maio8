```sql
SELECT * FROM employees WHERE department_id IN (SELECT id FROM departments WHERE name = 'Sales');
```
This revised query uses the `IN` operator to retrieve employees from all departments named 'Sales'. Alternatively, you could use `EXISTS` for improved performance in large datasets:
```sql
SELECT * FROM employees e WHERE EXISTS (SELECT 1 FROM departments d WHERE d.id = e.department_id AND d.name = 'Sales');
```