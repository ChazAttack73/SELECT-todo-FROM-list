DROP USER IF EXISTS michael;

CREATE USER micahel WITH ENCRYPTED PASSWORD 'stonebreaker';

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;

CREATE TABLE "users"
("id" serial NOT NULL, "name" varying character(45) NOT NULL)
