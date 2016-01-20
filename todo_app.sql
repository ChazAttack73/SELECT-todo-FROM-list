DROP USER IF EXISTS michael;

CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;

\c todo_app;

CREATE TABLE "tasks" ("id" serial NOT NULL,
  PRIMARY KEY("id"),
  "title" varchar(255) NOT NULL,
  "description" text NULL,
  "created_at" timestamp without time zone NOT NULL DEFAULT now(),
  "updated_at" timestamp without time zone NULL,
  "completed" boolean NOT NULL DEFAULT false
  );

ALTER TABLE tasks DROP COLUMN completed;

ALTER TABLE tasks ADD COLUMN "completed_at:" timestamp DEFAULT NULL;

\dt

\d tasks;

SELECT * FROM tasks;