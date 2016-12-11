Simple Flyway demo
See https://flywaydb.org for info

How to run?
1. mvn flyway:info
2. mvn flyway:migrate

Nr 1 shows scripts that are pending
Nr 2 run all pending scripts.

You can add one script at a time and migrate just the new one if you want.

The database is inside target/ and is called foobar
If you want to access the database to view the changes by adding one sql script at a time you should acces the database
with a SQL client. Ex. URL -> jdbc:h2:~/Projects/flyway-migration/target/foobar
Just remember to disconnect between migrate runs since the client puts a lock on the database (it is just a file).