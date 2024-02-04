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
-- Inserting a user with specific values including city
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('John', 'Doe', 'john.doe@example.com', 'user', 'New York');

-- Inserting another user with city
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Jane', 'Smith', 'jane.smith@example.com', 'admin', 'New York');

-- Inserting a third user with city
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', 'user', 'New York');

-- Inserting a fourth user with city
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Bob', 'Williams', 'bob.williams@example.com', 'user', 'New York');

-- Inserting a fifth user with city
INSERT INTO users (firstname, lastname, email, role, city) VALUES ('Eva', 'Brown', 'eva.brown@example.com', 'admin', 'New York');
