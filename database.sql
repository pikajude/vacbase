CREATE TABLE vax
  ( id INTEGER PRIMARY KEY NOT NULL
  , country TEXT NOT NULL
  , name TEXT NOT NULL
  , all_ BOOL NOT NULL
  , most BOOL NOT NULL
  , some_ BOOL NOT NULL
  , entry BOOL NOT NULL
  , exit BOOL NOT NULL
);

insert into vax (country, name, all_, most, some_, entry, exit) VALUES

("Kosovo", "MMR", 1, 0, 0, 0, 0),
("Kosovo", "Hepatitis A", 1, 0, 0, 0, 0);
