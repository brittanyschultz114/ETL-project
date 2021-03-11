ALTER TABLE "links" 
	ADD PRIMARY KEY ("movieid");
		
ALTER TABLE "movies"
	ADD PRIMARY KEY ("id");	
	
ALTER TABLE "links" 
	ADD CONSTRAINT "fk_links_tmdbid"
		FOREIGN KEY("tmdbid")
			REFERENCES "movies" ("id");

ALTER TABLE "ratings"
	ADD CONSTRAINT "fk_ratings_movieid"
		FOREIGN KEY("movieid")
			REFERENCES "links" ("movieid");