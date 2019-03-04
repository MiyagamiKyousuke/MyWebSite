CREATE TABLE item( 
  id SERIAL PRIMARY KEY
  , name VARCHAR (200) NOT NULL
  , card_type INT NOT NULL
  , effect VARCHAR (1000) NOT NULL
  , price INT NOT NULL
  , file_name VARCHAR (200) NOT NULL
); 
