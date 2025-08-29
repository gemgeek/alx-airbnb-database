# Database Normalization - Airbnb Project

## Objective
Ensure the Airbnb database design follows the principles of normalization up to Third Normal Form (3NF) to reduce redundancy and maintain data integrity.

---

## Normalization Steps

### 1. First Normal Form (1NF)
- All tables have atomic values (no repeating groups or arrays).
- Each table has a primary key ensuring uniqueness.
- ✅ Requirement met.

### 2. Second Normal Form (2NF)
- All tables are already in 1NF.
- No partial dependencies (no table uses a composite primary key).
- Each non-key attribute fully depends on the primary key.
- ✅ Requirement met.

### 3. Third Normal Form (3NF)
- All tables are already in 2NF.
- No transitive dependencies:
  - User → all attributes depend on user_id.
  - Property → all attributes depend on property_id.
  - Booking → all attributes depend on booking_id.
  - Payment → all attributes depend on payment_id.
  - Review → all attributes depend on review_id.
  - Message → all attributes depend on message_id.

⚠️ Note: The `total_price` field in **Booking** is technically a derived value (property.pricepernight × number_of_nights).  
- Keeping it is a deliberate **denormalization** choice for performance optimization.  
- This avoids recalculating on every query, which is practical in large-scale systems.

---

## Conclusion
The Airbnb database schema complies with **3NF**.  
A small denormalization was kept (`total_price` in Booking) to balance efficiency with normalization principles.  
This ensures a database design that is both normalized and optimized for real-world use.