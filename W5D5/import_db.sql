DROP TABLE IF EXISTS people;

CREATE TABLE people
  id INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL,

  FOREIGN KEY (fname_id) REFERENCES houses(id)
);

DROP TABLE if exists houses;

CREATE TABLE houses (
  id INTEGER PRIMARY KEY,
  address TEXT NOT NULL,
  year INTEGER PRIMARY KEY,
);

INSERT INTO
  houses (id, address, year)
VALUES
  (1,'304 10th St', 1978),
  (2,'1900 washington', 1988);