-- Create an index on email for fast user lookups
CREATE INDEX idx_users_email ON users(email);

-- Create indexes on foreign keys used in joins
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on booking_date for queries filtering by date ranges
CREATE INDEX idx_bookings_date ON bookings(booking_date);

-- Index on property location for location-based searches
CREATE INDEX idx_properties_location ON properties(location);