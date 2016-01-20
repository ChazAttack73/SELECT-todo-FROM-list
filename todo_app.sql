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

ALTER TABLE tasks ADD COLUMN "completed_at" timestamp DEFAULT NULL;

ALTER TABLE tasks ALTER COLUMN updated_at SET NOT NULL;
ALTER TABLE tasks ALTER COLUMN updated_at SET DEFAULT now();

INSERT INTO tasks VALUES (default, 'Study SQL', 'Complete this exercise', now(), now(), NULL);

INSERT INTO tasks (title, description) VALUES ('Study PostgreSQL', 'Read all the documentation');

SELECT title FROM tasks WHERE completed_at IS NULL;

SELECT * FROM tasks