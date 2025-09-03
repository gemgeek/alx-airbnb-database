# SQL Joins Queries

This directory contains SQL scripts demonstrating different types of joins using the Airbnb database schema.

## Queries Implemented
1. **INNER JOIN** → Retrieves all bookings with the respective users who made those bookings.  
2. **LEFT JOIN** → Retrieves all properties and their reviews, including properties with no reviews.  
3. **FULL OUTER JOIN** → Retrieves all users and bookings, even if the user has no booking or a booking is not linked to a user.

## File
- `joins_queries.sql`: Contains the SQL queries.


# Subqueries

- Wrote a non-correlated subquery to find properties with average rating > 4.0.
- Wrote a correlated subquery to find users with more than 3 bookings.