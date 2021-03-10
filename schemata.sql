--ALTER TABLE "links" 
	--ADD PRIMARY KEY ("movieId");
		
--ALTER TABLE "movies"
	--ADD PRIMARY KEY ("id");	
	
--ALTER TABLE "links" 
	--ADD CONSTRAINT "fk_links_tmdbId"
		--FOREIGN KEY("tmdbId")
			--REFERENCES "movies" ("id");

--ALTER TABLE "ratings"
	--ADD CONSTRAINT "fk_ratings_movieId"
		--FOREIGN KEY("movieId")
			--REFERENCES "links" ("movieId");