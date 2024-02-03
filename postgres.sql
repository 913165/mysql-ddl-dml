docker run -d -p 5432:5432 --name postgres-container -e POSTGRES_PASSWORD=postgres123 -e POSTGRES_DB=productsdb postgres:latest

docker exec -it postgres-container psql -U postgres -d productsdb

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT
);

-- Inserting a product with specific values
INSERT INTO products (name, price, description) VALUES ('Product 1', 19.99, 'Description for Product 1');

-- Inserting another product
INSERT INTO products (name, price, description) VALUES ('Product 2', 29.99, 'Description for Product 2');

-- Inserting a third product
INSERT INTO products (name, price, description) VALUES ('Product 3', 39.99, 'Description for Product 3');

-- Inserting a fourth product
INSERT INTO products (name, price, description) VALUES ('Product 4', 49.99, 'Description for Product 4');

-- Inserting a fifth product
INSERT INTO products (name, price, description) VALUES ('Product 5', 59.99, 'Description for Product 5');


