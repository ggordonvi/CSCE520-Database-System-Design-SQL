DROP TABLE IF EXISTS Song;
CREATE TABLE Song (
	title		VARCHAR(225) PRIMARY KEY,
	genreCode		CHAR(4),
	cDate		DATE
);

DROP TABLE IF EXISTS Composer;
CREATE TABLE Composer (
	name		VARCHAR(50) PRIMARY KEY,
	DOB		DATE
);

DROP TABLE IF EXISTS Writes;
CREATE TABLE Writes (
	composerName		VARCHAR(50) REFERENCES Composer(name),
	songTitle		VARCHAR(255) REFERENCES Song(title)
);

DROP TABLE IF EXISTS Performance;
CREATE TABLE Performance (
	perfName		VARCHAR(50),
	songTitle		VARCHAR(255) REFERENCES Song(title),
	length		INTEGER CHECK(length > 0),
	perfDate		DATE,
	recorded		CHAR(1) CHECK(recorded in ('T', 'F', '?')),
	PRIMARY KEY (songTitle, perfDate)
);

insert into Song values ('Anything Goes', 'jazz', '1934-01-04');
insert into Song values ('Auf dem Strom', 'clas', '1828-09-04');
insert into Song values ('I Shot the Sheriff', 'regg', '1973-05-23');
insert into Song values ('Psycho Killer', 'alt', '1975-12-02');
insert into Song values ('The Book I Read', 'alt', '1976-12-19');

insert into Composer values ('Bob Marley','1945-02-06');
insert into Composer values ('Chris Frantz', '1951-05-08');
insert into Composer values ('Cole Porter', '1891-06-09');
insert into Composer values ('David Bryne', '1952-05-14');
insert into Composer values ('Franz Schubert', '1797-01-31');
insert into Composer values ('Tina Weymouth', '1950-11-22');

insert into Writes values ('Cole Porter','Anything Goes');
insert into Writes values ('Franz Schubert', 'Auf dem Strom');
insert into Writes values ('Bob Marley', 'I Shot the Sheriff');
insert into Writes values ('Chris Frantz', 'Psycho Killer');
insert into Writes values ('David Bryne', 'Psycho Killer');
insert into Writes values ('Tina Weymouth', 'Psycho Killer');
insert into Writes values ('David Bryne', 'The Book I Read');

insert into Performance values ('Ethel Merman','Anything Goes', 195, '1934-11-21', 'F');
insert into Performance values ('Frank Sinatra','Anything Goes', 215, '1955-10-17', 'T');
insert into Performance values ('Brad Mehldau Trio','Anything Goes', 428, '2004-02-23', 'T');
insert into Performance values ('Tony Bennett/Lady Gaga','Anything Goes', 204, '2014-07-29', 'T');
insert into Performance values ('Lewis/Brain/Lush','Auf dem Strom', 584, '1954-04-06', 'T');
insert into Performance values ('Ainsley/Johnson/Schade','Auf dem Strom', 569, '1998-06-01', 'T');
insert into Performance values ('The Wailers','I Shot the Sheriff', 237, '1973-11-30', 'T');
insert into Performance values ('Eric Clapton','I Shot the Sheriff', 230, '1974-07-04', 'T');
insert into Performance values ('The Wailers','I Shot the Sheriff', 318, '1975-07-17', 'F');
insert into Performance values ('Talking Heads','Psycho Killer', 259, '1977-12-28', 'T');
insert into Performance values ('Talking Heads','Psycho Killer', 259, '1984-08-19', 'F');
insert into Performance values ('Talking Heads','The Book I Read', 180, '1977-12-28', 'T');