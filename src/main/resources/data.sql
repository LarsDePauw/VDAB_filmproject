INSERT INTO film (id, title, duration, director, summary, genre, rating, image, trailer_url) VALUES (1, 'Escape from Alcatraz', 192, 'Don Siegel', 'Cons trying to break out of Alcatraz prison', 0, 8, 'plfvijivj', 'youtube.com');
INSERT INTO actor (id, name, bio, birth_day, gender, profile_image) VALUES (1, 'Clint Eastwood', 'Born in Hollywoord, actor', '1940-05-06',  1, 'http://www.showbiz411.com/wp-content/uploads/2013/02/clint-eastwood.jpg');
INSERT INTO actor (id, name, bio, birth_day, gender, profile_image) VALUES (2, 'Robert Blossom', 'This man wanted to be an actor ever since he saw a play as a kid', '1938-11-06', 1, 'http://www.imdb.com/media/rm1865329152/nm0089348?ref_=nm_ov_ph');
INSERT INTO film_character (id, character_name, actor_id, film_id) VALUES (1, 'Frank Morris', 1, 1);
INSERT INTO film_character (id, character_name, actor_id, film_id) VALUES (2, 'Doc', 2, 1);






