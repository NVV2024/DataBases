CREATE TABLE musitian (
      id serial PRIMARY KEY, 
      Name VARCHAR(100)
  );

CREATE TABLE albom (
        id SERIAL PRIMARY KEY, 
        Name VARCHAR(100), 
        Year DATA, 
        musitian_id NOT NULL REFERNCE musitian(id)
);

CREATE TABLE musitianalbom (
        id SERIAL PRIMARY KEY, 
        musitian_id INTEGER NOT NULL REFERENCES musitian(id),
        albom_id INTEGER NOT NULL REFERENCES albom(id)
      );

CREATE TABLE track (
        id SERIAL PRIMARY KEY, 
        Name VARCHAR(100), 
        duration TIME, 
        albom_id INTEGER NOT NULL REFERENCES albom(id)
  );

CREATE TABLE collection (
      id SERIAL PRIMARY KEY, 
      Name VARCHAR(100), 
      year DATE
  );

CREATE TABLE CollectionTracks (
        id SERIAL PRIMARY KEY, 
        colection_id INTEGER NOT NULL REFERENCES collection(id), 
        track_id INTEGER NOT NULL REFERENCES track(id)
  );

CREATE TABLE AlbomCollection (
		id SERIAL PRIMARY key,
		albom_id INTEGER NOT NULL REFERENCES albom(id),
		collection_id INTEGER NOT NULL REFERENCES collection(id)
);

CREATE TABLE TrackList (
		TrackName INTEGER REFERENCES track(id),
		AlbomName INTEGER REFERENCES albom(id),
		CONSTRAINT pk PRIMARY KEY (TrackName, AlbomName) 
);
