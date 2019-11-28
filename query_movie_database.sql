use movies;

#Write a query in SQL to find the name and year of the movies.
select mov_title, 
mov_year from Movie;

#Write a query in SQL to find the year when the movie American Beauty released.
select mov_year 
from Movie
where mov_title = "American Beauty" ;

#Write a query in SQL to find the movie which was released in the year 1999
select mov_title
from movie
where mov_year = 1999;

#Write a query in SQL to find the movies which was released before 1998
select mov_title
from movie
where mov_year < 1998;

#Write a query in SQL to return the name of all reviewers and name of movies together in a single list
select rev_name, mov_title
from reviewer, Movie;

#Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
select rev_name
from reviewer
where rev_id IN
			(Select rev_id
            from rating
			where rev_stars >= 7);

#Write a query in SQL to find the titles of all movies that have no ratings.

select mov_title
from Movie
where mov_id IN
			(Select mov_id
            from rating
			where num_o_ratings = 0);

#Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value
select rev_name
from reviewer
where rev_id IN
		( Select rev_id
		   from Rating
			where num_o_ratings = Null);

#Write a query in SQL to find the name of movie and director (first and last names) who directed a 
# movie that casted a role for 'Eyes Wide Shut'.

select  dir_fname, dir_lname
from  Director
Where dir_id in
			(select dir_id
             from movie_direction
             where mov_id IN 
             (select mov_id
             from Movie
             where mov_title = "Eyes Wide Shut"));

 