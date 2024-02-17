docker run -d -p 3306:3306 --name mysql-container -e MYSQL_ROOT_PASSWORD=root123 mysql:latest
docker exec -it mysql-container bash
mysql -u root -p    
create database usersdb;
use usersdb;
-- Create users table with the new 'city' column
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL,
    city VARCHAR(50) DEFAULT 'New York' NOT NULL
);
-- Inserting a user with specific values including city as London
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('John', 'Doe', 'john.doe@example.com', 'user', 'London');
-- Inserting another user with city as London
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Jane', 'Smith', 'jane.smith@example.com', 'admin', 'London');
-- Inserting a third user with city as London
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', 'user', 'London');
-- Inserting a fourth user with city as London
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Bob', 'Williams', 'bob.williams@example.com', 'user', 'London');
-- Inserting a fifth user with city as London
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Eva', 'Brown', 'eva.brown@example.com', 'admin', 'London');
