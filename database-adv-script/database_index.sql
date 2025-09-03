-- Before adding index: Check performance on users.email
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'example@email.com';

-- Create an index on email for fast user lookups
CREATE INDEX idx_users_email ON users(email);

-- After adding index: Check performance again
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'example@email.com';



-- Before adding index: Check performance on bookings.user_id
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;

-- Create index
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- After adding index
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 42;



-- Before adding index: Check performance on bookings.property_id
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 10;

-- Create index
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- After adding index
EXPLAIN ANALYZE SELECT * FROM bookings WHERE property_id = 10;



-- Before adding index: Check performance on bookings.booking_date
EXPLAIN ANALYZE SELECT * FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Create index
CREATE INDEX idx_bookings_date ON bookings(booking_date);

-- After adding index
EXPLAIN ANALYZE SELECT * FROM bookings WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';



-- Before adding index: Check performance on properties.location
EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'New York';

-- Create index
CREATE INDEX idx_properties_location ON properties(location);

-- After adding index
EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'New York';