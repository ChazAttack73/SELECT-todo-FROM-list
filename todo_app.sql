DROP USER IF EXISTS michael;

CREATE USER micahel WITH ENCRYPTED PASSWORD 'stonebreaker';

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;

CREATE TABLE "tasks"
("id" serial NOT NULL, PRIMARY KEY("id"));