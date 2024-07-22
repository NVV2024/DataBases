CREATE TABLE musitian (
      id serial PRIMARY KEY, 
      Name VARCHAR(100) unique
  );

CREATE TABLE Style (
      id SERIAL PRIMARY KEY, 
      Name VARCHAR(100),
  );

CREATE TABLE albom (
        id SERIAL PRIMARY KEY, 
        Name VARCHAR(100), 
        Year INTEGER CHECK (Year > 1970 AND Year < 2024),
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
        Name NOT NULL VARCHAR(100), 
        duration INTEGER CHECK (duration > 30 AND duration < 1200), 
        albom_id INTEGER NOT NULL REFERENCES albom(id)
  );

CREATE TABLE collection (
      id SERIAL PRIMARY KEY, 
      Name NOT NULL VARCHAR(100), 
      Year INTEGER CHECK (Year > 1970 AND Year < 2024)
  );

CREATE TABLE CollectionTracks (
        id SERIAL PRIMARY KEY, 
        colection_id INTEGER NOT NULL REFERENCES collection(id), 
        track_id INTEGER NOT NULL REFERENCES track(id)
  );
