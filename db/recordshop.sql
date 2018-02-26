DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null
);

CREATE TABLE albums
(
  id SERIAL8 primary key,
  artists_id INT8 references artists(id),
  name VARCHAR(255) not null,
  price INT8,
  quantity INT8
);
