CREATE TABLE musitian (musitian_id serial PRIMARY KEY, Name VARCHAR(100));

CREATE TABLE album (albom_id SERIAL PRIMARY KEY, Name VARCHAR(100), Year DATA, musitian_id NOT NULL REFERNCE musitian(musitian_id));

                                                           ^
CREATE TABLE album (albom_id SERIAL PRIMARY KEY, Name VARCHAR(100), year DATE, musitian_id INTEGER NOT NULL REFERENCES musitian(musitian_id));


CREATE TABLE track (track_id SERIAL PRIMARY KEY, Name VARCHAR(100), duration TIME, albom_id INTEGER NOT NULL REFERENCES album(albom_id));

CREATE TABLE collection (colection_id SERIAL PRIMARY KEY, Name VARCHAR(100), year DATE);

CREATE TABLE CollectionTracks (id SERIAL PRIMARY KEY, colection_id INTEGER NOT NULL REFERENCES collection(colection_id), track_id INTEGER NOT NULL REFERENCES track(track_id));
