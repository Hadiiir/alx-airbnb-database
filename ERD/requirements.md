# Database ERD Requirements

## Entities
1. **User**
   - `user_id` (PK)
   - `name`, `email`, `password_hash`, `phone_number`
   - `created_at`, `updated_at`

2. **Property**
   - `property_id` (PK)
   - `host_id` (FK → User)
   - `title`, `description`, `price_per_night`, `location`
   - `bedrooms`, `bathrooms`, `max_guests`
   - `created_at`, `updated_at`

3. **Booking**
   - `booking_id` (PK)
   - `user_id` (FK → User), `property_id` (FK → Property)
   - `check_in_date`, `check_out_date`, `total_price`, `status`
   - `created_at`, `updated_at`

4. **Review**
   - `review_id` (PK)
   - `user_id` (FK → User), `property_id` (FK → Property)
   - `rating` (1-5), `comment`
   - `created_at`

## Relationships
- A **User** can host **many Properties** (1:N).
- A **User** can make **many Bookings** (1:N).
- A **Property** can have **many Bookings** (1:N).
- A **User** can write **many Reviews** (1:N).
- A **Property** can receive **many Reviews** (1:N).