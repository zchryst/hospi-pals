CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(400) NOT NULL,
  password_digest VARCHAR(400) NOT NULL
  -- need to have this name
);
