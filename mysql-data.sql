docker run -d -p 3306:3306 --name mysql-container -e MYSQL_ROOT_PASSWORD=root123 mysql:latest
docker exec -it <containerid> bash
create database usersdb;
use usersdb;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL
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
