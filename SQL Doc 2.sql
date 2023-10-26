

-- Create the Customer table
CREATE TABLE Customer6 (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address TEXT
);

-- Create the Movie table 
CREATE TABLE Movie (
    MovieID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    ReleaseDate DATE,
    Director VARCHAR(50),
    Duration INT
);

-- Create the Ticket table
CREATE TABLE Ticket (
    TicketID SERIAL PRIMARY KEY,
    CustomerID INT,
    MovieID INT,
    Showtime TIMESTAMP,
    SeatNumber VARCHAR(10),
    Price DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);

-- Create the Concession table
CREATE TABLE Concession (
    ConcessionID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Create the Screening table
CREATE TABLE Screening (
    ScreeningID SERIAL PRIMARY KEY,
    MovieID INT,
    StartTime TIMESTAMP,
    EndTime TIMESTAMP,
    ScreenNumber INT,
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);
