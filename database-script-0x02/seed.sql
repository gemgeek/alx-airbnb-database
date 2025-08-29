-- =============================
-- Airbnb Database Sample Data
-- =============================

-- Clear existing data
TRUNCATE Message, Review, Payment, Booking, Property, "User" RESTART IDENTITY CASCADE;

-- =============================
-- Users
-- =============================
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_1', '1234567890', 'host'),
    ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_password_2', '0987654321', 'guest'),
    ('33333333-3333-3333-3333-333333333333', 'Clara', 'Admin', 'clara@example.com', 'hashed_password_3', NULL, 'admin');

-- =============================
-- Properties
-- =============================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
    ('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 
     'Cozy Apartment', 'A modern apartment in the city center', 'New York, NY', 120.00),
    ('bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 
     'Beach House', 'Beautiful beachside house with ocean views', 'Miami, FL', 250.00);

-- =============================
-- Bookings
-- =============================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('cccc3333-cccc-cccc-cccc-cccccccccccc', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 
     '22222222-2222-2222-2222-222222222222', '2025-09-01', '2025-09-05', 480.00, 'confirmed'),
    ('dddd4444-dddd-dddd-dddd-dddddddddddd', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 
     '22222222-2222-2222-2222-222222222222', '2025-12-15', '2025-12-20', 1250.00, 'pending');

-- =============================
-- Payments
-- =============================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
    ('eeee5555-eeee-eeee-eeee-eeeeeeeeeeee', 'cccc3333-cccc-cccc-cccc-cccccccccccc', 480.00, 'credit_card'),
    ('ffff6666-ffff-ffff-ffff-ffffffffffff', 'dddd4444-dddd-dddd-dddd-dddddddddddd', 1250.00, 'paypal');

-- =============================
-- Reviews
-- =============================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
    ('gggg7777-gggg-gggg-gggg-gggggggggggg', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
     '22222222-2222-2222-2222-222222222222', 5, 'Amazing stay! Super clean and great location.');

-- =============================
-- Messages
-- =============================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
    ('hhhh8888-hhhh-hhhh-hhhh-hhhhhhhhhhhh', '22222222-2222-2222-2222-222222222222', 
     '11111111-1111-1111-1111-111111111111', 'Hi Alice, is the apartment available in October?'),
    ('iiii9999-iiii-iiii-iiii-iiiiiiiiiiii', '11111111-1111-1111-1111-111111111111', 
     '22222222-2222-2222-2222-222222222222', 'Hi Bob, yes it is available. Let me know your dates!');