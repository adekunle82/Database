use mymovie;

CREATE TABLE Actor(
	act_id				integer				NOT NULL,
	act_fname			Char(20)			NOT NULL,
	act_lname			Char(20)			NOT NULL,
	act_gender			Char(1)				NOT NULL,
	CONSTRAINT			Actor_PK			PRIMARY KEY(act_id)
    	);

CREATE TABLE Director(
	dir_id				integer				NOT NULL,
	dir_fname			Char(20)			NOT NULL,
	dir_lname			Char(20)			NOT NULL,
	CONSTRAINT			Director_PK			PRIMARY KEY(dir_id)
    	);
	CREATE TABLE movie_direction(
	dir_id				integer				NOT NULL,
	mov_id				integer				NOT NULL,
    CONSTRAINT			movie_direction_PK		PRIMARY KEY(dir_id, mov_id),
    
    CONSTRAINT			movie_direction_FK1			FOREIGN KEY(dir_id)
													REFERENCES Director(dir_id),
	CONSTRAINT			movie_direction_FK2			FOREIGN KEY(mov_id)
													REFERENCES Movie(mov_id)
    	);
	CREATE TABLE movie_cast(
    act_id				integer				NOT NULL,
	mov_id				integer				NOT NULL,
	movie_role			char(30)			NOT NULL,
	CONSTRAINT			movie_cast_PK		PRIMARY KEY(act_id, mov_id),
	CONSTRAINT			movie_cast_FK1			FOREIGN KEY(act_id)
												REFERENCES Actor(act_id),
	CONSTRAINT			movie_cast_FK2			FOREIGN KEY(mov_id)
												REFERENCES Movie(mov_id)
    	);
CREATE TABLE Movie(
	mov_id				integer				NOT NULL,
	mov_title			Char(50)			NOT NULL,
	mov_year			integer				NOT NULL,
	mov_time			integer				NOT NULL,
    mov_lang			char(50)			NOT NULL,
    mov_dt_rel			date				NOT NULL,
    mov_rel_country		char(5)				NOT NULL,
	CONSTRAINT			movie_PK			PRIMARY KEY(mov_id)
    	);
        
CREATE TABLE Reviewer(
	rev_id				integer				NOT NULL,
	rev_name			Char(30)			NOT NULL,
	CONSTRAINT			Reviewer_PK			PRIMARY KEY(rev_id)
    	);

CREATE TABLE Genres(
	gen_id				integer				NOT NULL,
	gen_title			Char(20)			NOT NULL,
	CONSTRAINT			Genres_PK			PRIMARY KEY(gen_id)
    	);
                
        
	CREATE TABLE Movie_genres(
	mov_id				integer				NOT NULL,
	gen_id				integer				NOT NULL,
    CONSTRAINT			Movies_genres_PK			PRIMARY KEY(mov_id, gen_id),
	CONSTRAINT			Movies_genres_FK1			FOREIGN KEY(mov_id)
													REFERENCES Movie(mov_id),
	CONSTRAINT			Movies_genres_FK2			FOREIGN KEY(gen_id)
													REFERENCES Genres(gen_id)
);


CREATE TABLE Rating(
	mov_id				integer				NOT NULL,
	rev_id				integer				NOT NULL,
    rev_stars			integer				Null,
    num_o_ratings		integer				Null,
	CONSTRAINT			Rating_PK		PRIMARY KEY(mov_id, rev_id),
	
	CONSTRAINT			Rating_FK1			FOREIGN KEY(mov_id)
													REFERENCES Movie(mov_id),
	CONSTRAINT			Rating_FK2			FOREIGN KEY(rev_id)
													REFERENCES Reviewer (rev_id)
);


