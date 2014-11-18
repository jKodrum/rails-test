BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" text NOT NULL);
INSERT INTO "schema_migrations" VALUES('20141021124904');
INSERT INTO "schema_migrations" VALUES('20141021130737');
INSERT INTO "schema_migrations" VALUES('20141022081540');
CREATE TABLE "books" ("id" SERIAL PRIMARY KEY NOT NULL, "title" text, "content" text, "created_at" timestamp, "updated_at" timestamp);
INSERT INTO "books" VALUES(1,'Thomson''s Diary','it''s an inspirational story. 
Not just saying it. It''s true so true','2014-10-21 12:53:03.015777','2014-10-24 07:07:39.593072');
INSERT INTO "books" VALUES(2,'Red Shack','a red man live in a red shack in a red forest.','2014-10-21 12:55:26.694038','2014-10-21 12:55:26.694038');
INSERT INTO "books" VALUES(3,'Empty Book','','2014-10-21 12:56:02.986869','2014-10-24 08:20:39.034645');
INSERT INTO "books" VALUES(4,'','','2014-10-21 12:57:24.254154','2014-10-21 12:57:24.254154');
CREATE TABLE "users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" text DEFAULT '' NOT NULL, "encrypted_password" text DEFAULT '' NOT NULL, "reset_password_token" text, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" text, "last_sign_in_ip" text, "created_at" timestamp, "updated_at" timestamp, "name" text);
INSERT INTO "users" VALUES(1,'john@gmail.com','$2a$10$w2Bdng2YToZ2oC6ejnOvceTBl8rkWNc8HZrh4G45RQaTZmaqPjrbm',NULL,NULL,NULL,2,'2014-10-24 06:52:17.363332','2014-10-22 08:22:59.356606','127.0.0.1','127.0.0.1','2014-10-22 08:22:59.261666','2014-10-24 06:52:17.364470','John');
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
COMMIT;
