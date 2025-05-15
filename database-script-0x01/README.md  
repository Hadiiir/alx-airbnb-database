# ALX Airbnb Database Schema

## Database Design Documentation

### Schema Overview
This schema implements an Airbnb-like property rental platform with the following entities:
- **Users**: Platform users (both hosts and guests)
- **Properties**: Rental listings with detailed information
- **Amenities**: Property features and facilities
- **Bookings**: Reservation records
- **Reviews**: Guest feedback system
- **Payments**: Transaction records

### Key Features
1. **Data Integrity**:
   - Primary and foreign key constraints
   - Appropriate data types for each field
   - CHECK constraints for validation

2. **Performance Optimization**:
   - Indexes on frequently queried columns
   - Composite indexes for common query patterns
   - Spatial index for location-based searches

3. **Scalability**:
   - UUID primary keys for distributed systems
   - Properly normalized tables
   - Junction table for many-to-many relationships

### Index Strategy
| Table | Indexed Columns | Purpose |
|-------|----------------|---------|
| users | email, username | Fast user lookup |
| properties | host_id, location, price | Host dashboard and search |
| bookings | user_id, property_id, dates | Reservation management |
| payments | booking_id, status | Payment tracking |

### Constraints
1. Referential integrity via foreign keys
2. Date validation in bookings (check_out > check_in)
3. Rating range enforcement (1-5 stars)
4. Unique constraints on appropriate fields

## Installation
1. Execute the schema.sql file in your MySQL server:
```bash
mysql -u username -p database_name < schema.sql