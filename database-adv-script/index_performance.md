# Index Performance Analysis

## Before Index Implementation

### Sample Query 1: Find user by email
```sql
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'user@example.com';