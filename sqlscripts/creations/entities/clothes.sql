CREATE TABLE IF NOT EXISTS clothes (
    id serial PRIMARY KEY,
    fk_resident_id integer,
    FOREIGN KEY( fk_resident_id ) REFERENCES residents( id ),
    fk_pattern_id integer NOT NULL,
    FOREIGN KEY( fk_pattern_id ) REFERENCES patterns( id ),
    fk_colour_name text NOT NULL,
    FOREIGN KEY( fk_colour_name ) REFERENCES colours( name ),
    density integer NOT NULL,
    fk_type_name text NOT NULL,
<<<<<<< HEAD
    FOREIGN KEY( fk_type_name ) REFERENCES types( name )
);
=======
    FOREIGN KEY( fk_type_name ) REFERENCES types( name ) 
);
>>>>>>> 2ae5f5d2fbb5d04e0f74be5df4942ec63f2e8aea
