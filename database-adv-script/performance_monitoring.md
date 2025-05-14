# Database Performance Monitoring Report

## Monitoring Methodology
- Used `EXPLAIN ANALYZE` for detailed query execution analysis
- Employed `SHOW PROFILE` for MySQL-specific diagnostics
- Monitored with `pg_stat_statements` for PostgreSQL
- Analyzed index usage statistics

---

## Query 1: Property Search by Location and Price
### Original Query
```sql
EXPLAIN ANALYZE
SELECT p.* 
FROM properties p
WHERE p.location = 'Paris' 
AND p.price_per_night BETWEEN 100 AND 200
ORDER BY p.rating DESC
LIMIT 50;