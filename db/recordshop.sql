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
  artist_id INT8 references artists(id),
  name VARCHAR(255) not null,
  buyprice INT8,
  sellprice INT8,
  quantity INT8
);
