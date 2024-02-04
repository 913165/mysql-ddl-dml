docker run -d -p 5432:5432 --name postgres-container -e POSTGRES_PASSWORD=postgres123 -e POSTGRES_DB=usersdb postgres:latest
docker exec -it postgres-container psql -U postgres -d usersdb

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL,
    city VARCHAR(50) DEFAULT 'New York' NOT NULL
);
-- Inserting a user with specific values
INSERT INTO users (firstname, lastname, email, role) VALUES ('John', 'Doe', 'john.doe@example.com', 'user');
-- Inserting another user
INSERT INTO users (firstname, lastname, email, role) VALUES ('Jane', 'Smith', 'jane.smith@example.com', 'admin');
-- Inserting a third user
INSERT INTO users (firstname, lastname, email, role) VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', 'user');
-- Inserting a fourth user
INSERT INTO users (firstname, lastname, email, role) VALUES ('Bob', 'Williams', 'bob.williams@example.com', 'user');
-- Inserting a fifth user
INSERT INTO users (firstname, lastname, email, role) VALUES ('Eva', 'Brown', 'eva.brown@example.com', 'admin');
