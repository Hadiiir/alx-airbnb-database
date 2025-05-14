-- 1. Non-correlated subquery to find properties with average rating > 4.0
SELECT p.property_id, p.title, p.price_per_night
FROM properties p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
)
ORDER BY p.price_per_night DESC;

-- 2. Correlated subquery to find users with more than 3 bookings
SELECT u.user_id, u.username, u.email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3
ORDER BY u.username ASC;