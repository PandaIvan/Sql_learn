INSERT INTO artist (name) VALUES 
('John Doe'), 
('Jane Smith'), 
('Alice Johnson'), 
('Bob Brown');

INSERT INTO genre (name) VALUES 
('Rock'), 
('Pop'), 
('Jazz');

INSERT INTO Album (title, release_date) VALUES 
('Greatest Hits', '2020-01-01'),
('Summer Vibes', '2021-06-01'),
('Jazz Classics', '2022-03-01');

INSERT INTO Track (title, album_id, length) VALUES 
('my Single', 1, 3.50),
('Summer Night', 1, 3.00),
('Beach Party', 2, 4.00),
('Smooth Ride', 2, 3.33),
('Classic Mood', 3, 3.67),
('Jazz in Paris', 3, 3.83);

INSERT INTO Collection (title, release_date) VALUES 
('Best of 2023', '2023-01-01'),
('Top Hits 2022', '2022-01-01'),
('Relaxing Tunes', '2021-01-01'),
('All Time Favorites', '2020-01-01'); 

INSERT INTO artistgenre (artist_id, genre_id) VALUES 
(1, 1), 
(1, 2), 
(2, 2), 
(3, 3), 
(4, 1);

INSERT INTO artistalbum (artist_id, album_id) VALUES 
(1, 1), 
(1, 2), 
(2, 2), 
(3, 3), 
(4, 3);

INSERT INTO collectiontrack (collection_id, track_id) VALUES 
(1, 1), 
(1, 2), 
(2, 3), 
(2, 4), 
(3, 5), 
(3, 6), 
(4, 1), 
(4, 6);


