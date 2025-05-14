# SQL Joins and Subqueries Practice

This repository contains examples of different types of SQL joins and subqueries with practical implementations.

## Join Query Types

### 1. INNER JOIN
- **Purpose**: Retrieves only matching records from both tables
- **Use Case**: Get all bookings along with user information for each booking
- **Behavior**: Only returns rows where there's a match in both tables
- **Example Use**: When you need complete booking information with user details

### 2. LEFT JOIN (LEFT OUTER JOIN)
- **Purpose**: Retrieves all records from the left table with matching records from the right table (if any)
- **Use Case**: Get all properties including those without any reviews
- **Behavior**: Returns all rows from the left table, with NULLs for non-matching right table rows
- **Example Use**: When you want to analyze all properties regardless of review status

### 3. FULL OUTER JOIN
- **Purpose**: Retrieves all records when there's a match in either table
- **Use Case**: Get all users and all bookings, including unmatched records
- **Behavior**: Returns all rows from both tables, with NULLs for non-matching sides
- **Example Use**: When you need a complete view of all users and bookings including orphan records

## Subquery Types

### 1. Non-correlated Subquery
- **Purpose**: Find properties with average rating greater than 4.0
- **Structure**:
  - Inner query calculates average rating per property
  - Outer query fetches property details for those meeting the rating criteria
- **Key Features**:
  - Uses `IN` operator with subquery
  - Subquery executes independently first
  - Results ordered by price (highest first)

### 2. Correlated Subquery
- **Purpose**: Find users who have made more than 3 bookings
- **Structure**:
  - Outer query processes each user
  - Inner query counts bookings for that specific user
  - Correlation through `b.user_id = u.user_id`
- **Key Features**:
  - Subquery executes for each row of outer query
  - Uses comparison operator (`>`) with subquery
  - Results ordered alphabetically by username

## Database Schema Overview

Tables used in these queries:
- `users`: Contains user information (user_id, username, email, etc.)
- `bookings`: Contains booking records (booking_id, user_id, property_id, dates)
- `properties`: Contains property listings (property_id, title, description, price_per_night, etc.)
- `reviews`: Contains property reviews (review_id, property_id, rating, comment, created_at)

## How to Use

1. For joins:
   - Execute each join query separately to see the results
   - Compare the result sets to understand how each join type differs
   - Modify the queries to experiment with different join conditions

2. For subqueries:
   - Run each subquery example to see how they filter data differently
   - Compare execution plans to understand performance implications
   - Try converting between correlated and non-correlated versions

## Important Notes

### About Joins:
- FULL OUTER JOIN is not supported in MySQL - you would use UNION of LEFT and RIGHT joins instead
- Always consider performance implications when using joins on large tables
- Proper indexing is crucial for join performance

### About Subqueries:
- Non-correlated subqueries execute first and return a set of values
- Correlated subqueries reference outer query values and execute repeatedly
- Both techniques can impact performance differently on large datasets
- Consider adding indexes on join/where columns for better performance
- In some cases, joins may be more efficient than subqueries

## Combined Best Practices

1. Use EXPLAIN to analyze query execution plans
2. Consider query readability along with performance
3. Test different approaches (joins vs subqueries) for the same problem
4. Document your queries with clear comments
5. Always consider NULL handling in your join conditions