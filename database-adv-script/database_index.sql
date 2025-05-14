-- Users table indexes
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_created_at ON users(created_at);

-- Bookings table indexes
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_check_in_date ON bookings(check_in_date);
CREATE INDEX idx_bookings_check_out_date ON bookings(check_out_date);
CREATE INDEX idx_bookings_status ON bookings(status);

-- Properties table indexes
CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price_per_night ON properties(price_per_night);
CREATE INDEX idx_properties_rating ON properties(rating);
CREATE INDEX idx_properties_created_at ON properties(created_at);

-- Composite indexes for query optimization
CREATE INDEX idx_properties_location_price ON properties(location, price_per_night);
CREATE INDEX idx_bookings_dates_user ON bookings(user_id, check_in_date, check_out_date);