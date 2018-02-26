DROP TABLE IF EXISTS motorbikes;
DROP TABLE IF EXISTS manufacturer;

CREATE TABLE manufacturer
(
  id SERIAL8 primary key,
  name VARCHAR(255) not null
);

CREATE TABLE motorbikes
(
  id SERIAL8 primary key,
  year INT8,
  manufacturer_id INT8 references manufacturer(id),
  model VARCHAR(255) not null,
  engine_size INT8,
  price INT8,
  quantity INT8
);
