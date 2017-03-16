CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  username VARCHAR(400) NOT NULL,
  email VARCHAR(400) NOT NULL,
  password_digest VARCHAR(400) NOT NULL,
  age INTEGER,
  location_id INTEGER
);

CREATE TABLE locations (
  id SERIAL4 PRIMARY KEY,
  location_name VARCHAR(400)
);

CREATE TABLE comments (
  id SERIAL4 PRIMARY KEY,
  owner_id INTEGER,
  group_id INTEGER,
  post TEXT
);

CREATE TABLE user_groups (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  group_id INTEGER
);

CREATE TABLE groups (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(400),
  description TEXT,
  owner_id INTEGER
);

CREATE TABLE user_interests (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  interest_id INTEGER
);

CREATE TABLE interests (
  id SERIAL4 PRIMARY KEY,
  interest_name VARCHAR(200)
);
