DROP TABLE IF EXISTS video;

CREATE TABLE video (id SERIAL PRIMARY KEY, title VARCHAR, description TEXT, url TEXT, genre VARCHAR);

INSERT INTO video (title, description, url, genre) VALUES ('Video 1', 'Sample Description 1', 'https://www.youtube.com/embed/QPCDoANDkl4', 'Comedy');
INSERT INTO video (title, description, url, genre) VALUES ('Video 2', 'Sample Description 2', 'https://www.youtube.com/embed/X16yJ6GSch0', 'Gaming');
INSERT INTO video (title, description, url, genre) VALUES ('Video 3', 'Sample Description 3', 'https://www.youtube.com/embed/98ImmFfMCFY', 'Music');
INSERT INTO video (title, description, url, genre) VALUES ('Video 4', 'Sample Description 4', 'https://www.youtube.com/embed/cdg193GvnBA', 'Trailer');
INSERT INTO video (title, description, url, genre) VALUES ('Video 5', 'Sample Description 5', 'https://www.youtube.com/embed/7dMtlvX1gWE', 'Sports');
