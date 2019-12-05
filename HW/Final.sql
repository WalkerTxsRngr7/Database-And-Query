USE wg0742700;
GO


--CREATE TABLE f_Artist(
--    ArtistID        INT PRIMARY KEY IDENTITY,
--    ArtistName        VARCHAR(100)
--);

--CREATE TABLE f_Album(
--    AlbumID            INT PRIMARY KEY IDENTITY,    
--    ArtistID        INT NOT NULL REFERENCES f_Artist(ArtistID),
--    AlbumName        VARCHAR(100) NOT NULL,
--    ReleaseDate        DATE NOT NULL
--);
--CREATE INDEX IX_Artists ON f_Album(ArtistID);

--CREATE TABLE f_Media(
--    MediaID            INT PRIMARY KEY IDENTITY,
--    MediaType        VARCHAR(10) NOT NULL    
--);

--CREATE TABLE f_Stock(
--    StockID            INT PRIMARY KEY IDENTITY,
--    AlbumID            INT NOT NULL REFERENCES f_Album(AlbumID),
--    MediaID            INT NOT NULL REFERENCES f_Media(MediaID),
--    Quantity        INT NOT NULL DEFAULT 0,
--    Location        INT NOT NULL
--);
--CREATE INDEX IX_Albums ON f_Stock(AlbumID);
--CREATE INDEX IX_MediaTypes ON f_Stock(MediaID);

--CREATE TABLE f_Tracks(
--    TrackID            INT IDENTITY,
--    AlbumID            INT NOT NULL REFERENCES f_Album(AlbumID),
--    TrackName        VARCHAR(50) NOT NULL,
--    TrackLength        TIME, 
--    PRIMARY KEY(AlbumID, TrackID)
--);
--CREATE INDEX IX_Albums ON f_Tracks(AlbumID);

--CREATE TABLE f_Address(
--    AddressID        INT PRIMARY KEY IDENTITY,
--    Address1        VARCHAR(100) NOT NULL,
--    Address2        VARCHAR(100) NULL,
--    City            VARCHAR(50) NOT NULL,
--    State            VARCHAR(2) NOT NULL,
--    Zip                INT NOT NULL
--);

--CREATE TABLE f_Customers(
--    CustomerID        INT PRIMARY KEY IDENTITY,
--    FirstName        VARCHAR(50) NOT NULL,
--    LastName        VARCHAR(50) NOT NULL,
--    EmailAddress    VARCHAR(50) NOT NULL,
--    AddressID        INT NOT NULL REFERENCES f_Address(AddressID)
--);
--CREATE INDEX IX_Addresses ON f_Customers(AddressID);




--INSERT INTO f_Artist
--VALUES('Five Finger Death Punch');

--INSERT INTO f_Artist
--VALUES('Ice Nine Kills');

--Make sure to change ID numbers
--INSERT INTO f_Album
--VALUES(1, 'The Wrong Side of Heaven and the Righteous Side of Hell, Volume 1', '2013-07-30');

--INSERT INTO f_Album
--VALUES(1, 'A Decade of Destruction', '2017-12-01');

--INSERT INTO f_Album
--VALUES(2, 'Every Trick in the Book', '2015-12-04');

--INSERT INTO f_Album
--VALUES(2, 'The Silver Scream', '2018-10-05');

SELECT * FROM f_Album;