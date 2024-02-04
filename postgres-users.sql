docker run -d -p 5432:5432 --name postgres-container -e POSTGRES_PASSWORD=postgres123 -e POSTGRES_DB=usersdb postgres:latest

docker exec -it postgres-container psql -U postgres -d usersdb
