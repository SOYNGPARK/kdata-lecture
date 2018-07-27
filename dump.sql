BEGIN TRANSACTION;
CREATE TABLE Album(
            id INTEGER PRIMARY KEY,
            title TEXT NOT NULL,
            artist_id INTEGER
        );
INSERT INTO "Album" VALUES(1,'Pallete',1);
INSERT INTO "Album" VALUES(2,'FourSpring',2);
CREATE TABLE Artist(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL
        );
INSERT INTO "Artist" VALUES(1,'IU');
INSERT INTO "Artist" VALUES(2,'AKMU');
CREATE TABLE Genre(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL
        );
INSERT INTO "Genre" VALUES(1,'Duet');
INSERT INTO "Genre" VALUES(2,'Solo');
CREATE TABLE Track(
            id INTEGER PRIMARY KEY,
            title TEXT NOT NULL,
            length INTEGER,
            rating INTERGER,
            count INTERGER,
            album_id INTEGER,
            genre_id INTEGER
        );
INSERT INTO "Track" VALUES(1,'Pallete',NULL,NULL,NULL,1,2);
INSERT INTO "Track" VALUES(2,'Go back home',NULL,NULL,NULL,2,1);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('Artist',2);
INSERT INTO "sqlite_sequence" VALUES('Genre',2);
COMMIT;
