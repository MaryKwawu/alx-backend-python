/*
This script creates a table named 'users' in a database.
The table has three columns:
- 'id': an integer that is never null, auto-increments, and serves as the primary key.
- 'email': a string of up to 255 characters that is never null and must be unique.
- 'name': a string of up to 255 characters.

The script checks if the table already exists in the database before attempting to create it. 
This prevents the script from failing if the table already exists.

This script is written in SQL and should work on any database that supports SQL.
*/

-- MySQL
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    PRIMARY KEY(id),
    UNIQUE(email)
);
