CREATE TABLE buy( 
  id SERIAL PRIMARY KEY
  , user_id INT NOT NULL
  , total_price INT NOT NULL
  , delivery_method_id int NOT NULL
  , create_date	datetime NOT NULL
); 



