-- Clear existing data (optional, use with caution!)
-- ALTER TABLE reviews DISABLE TRIGGER ALL;
-- ALTER TABLE bookings DISABLE TRIGGER ALL;
-- TRUNCATE TABLE users, addresses, properties, bookings, reviews CASCADE;
-- ALTER TABLE reviews ENABLE TRIGGER ALL;
-- ALTER TABLE bookings ENABLE TRIGGER ALL;

-- Insert Users (Hosts & Guests)
INSERT INTO users (user_id, name, email, password_hash, phone_number) VALUES
    ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'John Doe', 'john@example.com', '$2a$10$xJwL5vxZ5vZ5vZ5vZ5vZ5u', '+1234567890'),
    ('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Jane Smith', 'jane@example.com', '$2a$10$yJwL5vxZ5vZ5vZ5vZ5vZ5u', '+1987654321'),
    ('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Alice Johnson', 'alice@example.com', '$2a$10$zJwL5vxZ5vZ5vZ5vZ5vZ5u', '+1122334455');

-- Insert Addresses
INSERT INTO addresses (address_id, street, city, state, country, postal_code) VALUES
    ('d3eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '123 Main St', 'New York', 'NY', 'USA', '10001'),
    ('e4eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '456 Oak Ave', 'Los Angeles', 'CA', 'USA', '90001'),
    ('f5eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', '789 Beach Blvd', 'Miami', 'FL', 'USA', '33101');

-- Insert Properties
INSERT INTO properties (property_id, host_id, address_id, title, description, price_per_night, bedrooms, bathrooms, max_guests) VALUES
    ('g6eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'd3eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Cozy NYC Apartment', 'A lovely apartment in Manhattan', 150.00, 1, 1, 2),
    ('h7eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'e4eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'Luxury LA Villa', 'Spacious villa with pool', 300.00, 3, 2, 6),
    ('i8eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'f5eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Beachfront Miami Condo', 'Ocean view condo', 200.00, 2, 2, 4);

-- Insert Bookings
INSERT INTO bookings (booking_id, user_id, property_id, check_in_date, check_out_date, total_price, status) VALUES
    ('j9eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', 'b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'g6eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', '2023-10-01', '2023-10-05', 600.00, 'confirmed'),
    ('k0eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'h7eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', '2023-11-15', '2023-11-20', 1500.00, 'pending'),
    ('l1eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'i8eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', '2023-12-10', '2023-12-15', 1000.00, 'completed');

-- Insert Reviews
INSERT INTO reviews (review_id, user_id, property_id, rating, comment) VALUES
    ('m2eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', 'b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'g6eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 5, 'Great stay! Perfect location.'),
    ('n3eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'h7eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 4, 'Amazing villa, but a bit pricey.'),
    ('o4eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'i8eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', 5, 'Best beach view ever!');