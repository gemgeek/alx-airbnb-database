# Database Seeding - Airbnb Project

## Overview
This directory contains **sample data** to populate the Airbnb database schema.  
It helps test queries, validate relationships, and simulate real-world scenarios.

## Contents
- **seed.sql** → SQL script with `INSERT` statements for all tables:
  - Users (host, guest, admin)
  - Properties
  - Bookings
  - Payments
  - Reviews
  - Messages

## Example Data
- Host: Alice Johnson, owns 2 properties.
- Guest: Bob Smith, booked both properties.
- Admin: Clara, oversees system.
- Bookings include confirmed & pending statuses.
- Payments processed via credit card and PayPal.
- Reviews & messages simulate real interactions.

## Usage
1. Ensure schema is created (`schema.sql`).
2. Run the seed script:
   ```bash
   psql -U username -d database_name -f seed.sql