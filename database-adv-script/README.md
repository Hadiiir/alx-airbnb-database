# SQL Join Queries Explanation

This repository contains examples of different types of SQL joins with practical implementations.

## Query Types

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

## Database Schema Overview

Tables used in these queries:
- `users`: Contains user information (user_id, username, email, etc.)
- `bookings`: Contains booking records (booking_id, user_id, property_id, dates)
- `properties`: Contains property listings (property_id, title, description, etc.)
- `reviews`: Contains property reviews (review_id, property_id, rating, comment)

## How to Use

1. Execute each query separately to see the results
2. Compare the result sets to understand how each join type differs
3. Modify the queries to experiment with different join conditions

## Notes

- FULL OUTER JOIN is not supported in MySQL - you would use UNION of LEFT and RIGHT joins instead
- Always consider performance implications when using joins on large tables