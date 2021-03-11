## Final Report

* **T**eam:

    * Randall Crawford
    * Max Eiteljorg
    * Keri Hennenfent
    * Brittany Schultz
    * Caleb Sheery

* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

    * Three .csv files were imported into jupyter notebook.
        * movies_metadata.csv
        * links_small.csv
        * ratings_small.csv

* **T**ransform: what data cleaning or transformation was required.

    * movies_metadata.csv
        * The 'id' column was converted to a numeric format, given it was going to be necessary to eventually merge with the 'links_small' dataframe.
        * Unnecessary columns with JSON dicts were removed.
        * Duplicate records associated with the 'id' column were deleted, given it was going
        to be eventually used as a primary key in a Postgresql table.

    * links_small.csv
        * Duplicate records associated with the 'movieId' column were deleted, given it was going
        to be eventually used as a primary key in a Postgresql table.
        * All column names were changed from an uppercase letter in them to a lowercase letter 
        (i.e. 'movieId' to "movieid"), which was necessary for Postgresql queries to work properly.

    * The 'movies' and 'links_small' dataframes were merged, and records associated with null values in 'id' and 'tmdbid' columns were deleted.

    * A 'links_small' cleaned dataframe was created from the merged database.

    * A 'movies' cleaned dataframe was created from the merged database.

    * ratings_small.csv
        * The 'timestamp' column date format was converted to something legible.
        * Column names were changed from an uppercase letter in them to a lowercase letter 
        (i.e. 'movieId' to "movieid"), which was necessary for Postgresql queries to work properly.
    
    * The 'ratings_small' dataframe was merged with the 'links_small' cleaned dataframe, and 'ratings_small' records associated with 'movieid' not in both dataframes were deleted.

    * A 'ratings_small' cleaned dataframe was created from the merged database.

* **L**oad: the final database, tables/collections, and why this was chosen.

    * The cleaned dataframes were exported to .csv files without dataframe indexes.
        * movies.csv
        * links.csv
        * ratings.csv

    * An 'ETL_Project' database was created in Postgresql (pgAdmin4).

    * The cleaned dataframes were exported as tables without dataframe indexes to the 'ETL_Project' database using SQLAlchemy and psycopg2.
        * movies
        * links
        * ratings
    
    * Database table data types were evaluated. 
        * An ERD was created.
        * An ALTER TABLE schemata was created and used.

* **N**ote: After some deduction, it was realized that using SQLAlchemy to export the dataframes as tables into a created Postgresql database (pgAdmin4) was going work better than trying to import the cleaned .csv files into pre-defined tables from an ERD generated schemata.  It made more sense to let Postgresql (pgAdmin4) define the data types. Afterwards, use the data and data types to create an ERD and an ALTER TABLE schemata.

* **Q**uery: Created a query to list movie titles, movie ids, imdb ids, tmdb ids, and an average rating, utilizing all three tables.



