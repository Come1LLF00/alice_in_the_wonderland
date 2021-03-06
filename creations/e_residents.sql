CREATE TABLE IF NOT EXISTS residents (
    id serial PRIMARY KEY,
    name text not null,
    fk_suit_name varchar(16),
    FOREIGN KEY( fk_suit_name ) REFERENCES suits( name ) ON DELETE SET NULL,
    fk_sex_name varchar(16),
    FOREIGN KEY( fk_sex_name ) REFERENCES sexes( name ) ON DELETE SET NULL,
    fk_role_name varchar(24),
    FOREIGN KEY( fk_role_name ) REFERENCES roles( name ) ON DELETE SET NULL
);
