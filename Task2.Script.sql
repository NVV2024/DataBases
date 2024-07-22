CREATE TABLE musitian (
      id serial PRIMARY KEY, 
      Name VARCHAR(100)
  );

CREATE TABLE Style (
      id SERIAL PRIMARY KEY, 
      Name VARCHAR(100),
  );

CREATE TABLE albom (
        id SERIAL PRIMARY KEY, 
        Name VARCHAR(100), 
        Year INTEGER, 
        musitian_id NOT NULL REFERNCE musitian(id)
);

CREATE TABLE musitianalbom (
        id SERIAL PRIMARY KEY, 
        musitian_id INTEGER NOT NULL REFERENCES musitian(id),
        albom_id INTEGER NOT NULL REFERENCES albom(id)
      );

CREATE TABLE MusitianStyle (
        id SERIAL PRIMARY KEY, 
        musitian_id INTEGER NOT NULL REFERENCES musitian(id),
        style_id INTEGER NOT NULL REFERENCES Style(id)
      );

CREATE TABLE track (
        id SERIAL PRIMARY KEY, 
        Name VARCHAR(100), 
        duration INTERVAL, 
        albom_id INTEGER NOT NULL REFERENCES albom(id)
  );

CREATE TABLE collection (
      id SERIAL PRIMARY KEY, 
      Name VARCHAR(100), 
      Year INTEGER
  );

CREATE TABLE CollectionTracks (
        id SERIAL PRIMARY KEY, 
        colection_id INTEGER NOT NULL REFERENCES collection(id), 
        track_id INTEGER NOT NULL REFERENCES track(id)
  );
