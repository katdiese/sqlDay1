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

INSERT INTO stores(id, name, location, web_address, category) VALUES (default, 'Target', '1234 Somewhere Dr.', 'www.target.com', 'everything');

INSERT INTO products(id, price, barcode, name, description, image_url, store_id) VALUES
  (default, 44.21, '000001234', 'Shampoo', '44oz bottle', 'www.google.com', 1),
  (default, 44.21, '000001234', 'Shampoo', '44oz bottle', 'www.google.com', 1);