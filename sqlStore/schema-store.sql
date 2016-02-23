DROP DATABASE IF EXISTS galvanize;
CREATE DATABASE galvanize;

\connect galvanize;

CREATE TABLE stores(
  id serial PRIMARY KEY,
  name varchar(255),
  location text,
  web_address text,
  category text
);

CREATE TABLE products(
  id serial PRIMARY KEY,
  price decimal,
  barcode integer UNIQUE,
  name varchar(255),
  description text,
  image_url text,
  store_id integer REFERENCES stores(id)
);