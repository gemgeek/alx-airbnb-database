# Database Schema - Airbnb Project

## Overview
This directory contains the SQL schema for the **Airbnb database project**.  
The schema was designed based on the ERD and normalization steps, ensuring a robust and scalable database.

## Contents
- **schema.sql** → SQL script that creates all required tables, constraints, and indexes.

## Key Highlights
- **Entities**: User, Property, Booking, Payment, Review, Message.
- **Constraints**: 
  - Primary keys for uniqueness.
  - Foreign keys to enforce relationships.
  - Unique and NOT NULL constraints where required.
  - CHECK constraints for roles, booking status, ratings, and payment methods.
- **Indexes**: Added on frequently queried fields such as:
  - `email` in User.
  - `host_id` in Property.
  - `property_id` and `user_id` in Booking.
  - `booking_id` in Payment.
  - `property_id` and `user_id` in Review.
  - `sender_id` and `recipient_id` in Message.

## Usage
1. Connect to your PostgreSQL or MySQL database.
2. Run the script:
   ```bash
   psql -U username -d database_name -f schema.sql