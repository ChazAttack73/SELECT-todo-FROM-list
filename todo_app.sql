DROP USER IF EXISTS michael;

CREATE DATABASE todo_app;
\c todo_app;

CREATE TABLE "users"
("id" serial NOT NULL, "name" varying character(45) NOT NULL)
