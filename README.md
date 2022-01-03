# Simple [Flyway](https://flywaydb.org) demo

**Version control for your database** \
Robust schema evolution across all your environments.
With ease, pleasure, and plain SQL.

#### How to run?

##### `%> mvn flyway:info`
```
+---------+----------------------+---------------------+---------+
| Version | Description          | Installed on        | State   |
+---------+----------------------+---------------------+---------+
| 1       | create person table  |                     | Pending |
| 2       | add people           |                     | Pending |
| 3       | create address table |                     | Pending |
+---------+----------------------+---------------------+---------+
```
##### `%> mvn flyway:migrate`
```
[INFO] Flyway 4.0.3 by Boxfuse
[INFO] Database: jdbc:h2:file:~/Projects/flyway-migration/target/foobar (H2 1.4)
[INFO] Successfully validated 3 migrations (execution time 00:00.005s)
[INFO] Creating Metadata table: "PUBLIC"."schema_version"
[INFO] Current version of schema "PUBLIC": << Empty Schema >>
[INFO] Migrating schema "PUBLIC" to version 1 - create person table
[INFO] Migrating schema "PUBLIC" to version 2 - add people
[INFO] Migrating schema "PUBLIC" to version 3 - create address table
[INFO] Successfully applied 3 migrations to schema "PUBLIC" (execution time 00:00.036s).
```
##### `%> mvn flyway:clean`
```
[INFO] Flyway 4.0.3 by Boxfuse
[INFO] Database: jdbc:h2:file:~/Projects/flyway-migration/target/foobar (H2 1.4)
[INFO] Successfully cleaned schema "PUBLIC" (execution time 00:00.005s)
```
#### Tip
1. You can add one script at a time and migrate just the new one if you want.
2. The database is inside `target/` and is called `foobar`
3. If you want to access the database to view the changes by adding one sql script at a time you should acces the database
with a SQL client. Ex. URL -> `jdbc:h2:~/Projects/flyway-migration/target/foobar
Just remember to disconnect between migrate runs since the client puts a lock on the database (it is just a file).
