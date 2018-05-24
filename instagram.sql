CREATE SCHEMA instagram;
SET SEARCH_PATH TO instagram;

CREATE TABLE users (
  id         SERIAL PRIMARY KEY,
  username   TEXT UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE photos (
  id         SERIAL PRIMARY KEY,
  image_url  TEXT    NOT NULL,
  user_id    INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT now(),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE comments (
  id           SERIAL PRIMARY KEY,
  comment_text TEXT    NOT NULL,
  photo_id     INTEGER NOT NULL,
  user_id      INTEGER NOT NULL,
  created_at   TIMESTAMP DEFAULT now(),
  FOREIGN KEY (photo_id) REFERENCES photos (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE likes (
  user_id    INTEGER NOT NULL,
  photo_id   INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT now(),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (photo_id) REFERENCES photos (id),
  PRIMARY KEY (user_id, photo_id)
);

CREATE TABLE follows (
  follower_id INTEGER NOT NULL,
  followee_id INTEGER NOT NULL,
  created_at  TIMESTAMP DEFAULT now(),
  FOREIGN KEY (follower_id) REFERENCES users (id),
  FOREIGN KEY (followee_id) REFERENCES users (id),
  PRIMARY KEY (follower_id, followee_id)
);

CREATE TABLE tags (
  id         SERIAL PRIMARY KEY,
  tag_name   TEXT UNIQUE,
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE photos_tags (
  photo_id INTEGER NOT NULL,
  tag_id   INTEGER NOT NULL,
  FOREIGN KEY (photo_id) REFERENCES photos (id),
  FOREIGN KEY (tag_id) REFERENCES tags (id),
  PRIMARY KEY (photo_id, tag_id)
);
