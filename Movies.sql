-- Create the Customer6 table
CREATE TABLE Customer6 (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20)
);
-- Create the Customer table
INSERT INTO Customer6 (name, email, phone) VALUES
    ('Ola Kufo', 
    'kunlekufo@gmail.com',
    '240 495 4394')
-- Create the Movie table
CREATE TABLE Movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    genre VARCHAR(50),
    duration_minutes INT
);
INSERT INTO Movie (title, release_date, genre, duration_minutes) VALUES
    ('Arodan 1',
   '2023-10-15',
  'fiction', 120);


-- Create the Ticket table
CREATE TABLE Ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    movie_id INT REFERENCES Movie(movie_id),
    purchase_date DATE,
    price DECIMAL(8, 2) NOT NULL
);
INSERT INTO Ticket (customer_id, movie_id, purchase_date, price) VALUES
    (1,
   1, 
  '2023-01-20',
   10.50);

-- Create the Concession table
CREATE TABLE Concession (
    concession_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    movie_id INT REFERENCES Movie(movie_id),
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(8, 2) NOT NULL
);
 INSERT INTO Concession (customer_id, movie_id, item_name, price) VALUES
    (1,
    1, 
    'Popcorn',
    5.00)


   

