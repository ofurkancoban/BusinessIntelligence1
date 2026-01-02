-- public.movie definition

-- Drop table

-- DROP TABLE public.movie;

CREATE TABLE movie (
	m_id INTEGER PRIMARY KEY,
	title TEXT NULL,
	release_year INTEGER NULL,
	director TEXT NULL
);

-- rating definition

-- Drop table

-- DROP TABLE rating;

CREATE TABLE rating (
	r_id INTEGER,
	m_id INTEGER NULL,
	stars INTEGER NULL,
	rating_date date NULL
);

-- reviewer definition

-- Drop table

-- DROP TABLE reviewer;

CREATE TABLE reviewer (
	r_id INTEGER PRIMARY KEY,
	reviewer_name TEXT NULL
);

INSERT INTO movie (m_id,title,release_year,director) VALUES (101,'Gone with the Wind',1939,'Victor Fleming');
INSERT INTO movie (m_id,title,release_year,director) VALUES (102,'Star Wars',1977,'George Lucas');
INSERT INTO movie (m_id,title,release_year,director) VALUES (103,'The Sound of Music',1965,'Robert Wise');
INSERT INTO movie (m_id,title,release_year,director) VALUES (104,'E.T.',1982,'Steven Spielberg');
INSERT INTO movie (m_id,title,release_year,director) VALUES (105,'Titanic',1997,'James Cameron');
INSERT INTO movie (m_id,title,release_year,director) VALUES (106,'Snow White',1937,NULL);
INSERT INTO movie (m_id,title,release_year,director) VALUES (107,'Avatar',2009,'James Cameron');
INSERT INTO movie (m_id,title,release_year,director) VALUES (108,'Raiders of the Lost Ark',1981,'Steven Spielberg');


INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (201,101,2,'2011-01-22');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (201,101,4,'2011-01-27');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (202,106,4,NULL);
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (203,103,2,'2011-01-20');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (203,108,4,'2011-01-12');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (203,108,2,'2011-01-30');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (204,101,3,'2011-01-09');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (205,103,3,'2011-01-27');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (205,104,2,'2011-01-22');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (205,108,4,NULL);
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (206,107,3,'2011-01-15');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (206,106,5,'2011-01-19');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (207,107,5,'2011-01-20');
INSERT INTO rating (r_id,m_id,stars,rating_date) VALUES (208,104,3,'2011-01-02');


INSERT INTO reviewer (r_id,reviewer_name) VALUES (201,'Sarah Martinez');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (202,'Daniel Lewis');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (203,'Brittany Harris');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (204,'Mike Anderson');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (205,'Chris Jackson');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (206,'Elizabeth Thomas');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (207,'James Cameron');
INSERT INTO reviewer (r_id,reviewer_name) VALUES (208,'Ashley White');
