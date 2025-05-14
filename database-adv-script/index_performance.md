# Query Performance Analysis with EXPLAIN ANALYZE

## Test Query 1: User Lookup by Email

### Before Index
```sql
EXPLAIN ANALYZE 
SELECT * FROM users WHERE email = 'test@example.com';