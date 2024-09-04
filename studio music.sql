CREATE TABLE artist (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE artistGenre (
    artist_id INT REFERENCES Artist(artist_id),
    genre_id INT REFERENCES Genre(genre_id),
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE artistAlbum (
    artist_id INT REFERENCES Artist(artist_id),
    album_id INT REFERENCES Album(album_id),
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE track (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    album_id INT REFERENCES Album(album_id)
);

CREATE TABLE collection (
    collection_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE collectionTrack (
    collection_id INT REFERENCES Collection(collection_id),
    track_id INT REFERENCES Track(track_id),
    PRIMARY KEY (collection_id, track_id)
);

ALTER TABLE track ADD COLUMN length INT;

ALTER TABLE collection ADD COLUMN release_year INT;

