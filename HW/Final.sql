USE wg0742700;
GO

--DROP TABLE f_Album;
--DROP TABLE f_Artist;
--DROP TABLE f_Media;
--DROP TABLE f_Stock;
--DROP TABLE f_Track;
--DROP TABLE f_Customer;
--DROP TABLE f_Address;


--CREATE TABLE f_Artists(
--    ArtistID        INT PRIMARY KEY IDENTITY,
--    ArtistName        VARCHAR(100)
--);

--CREATE TABLE f_Albums(
--    AlbumID            INT PRIMARY KEY IDENTITY,    
--    ArtistID        INT NOT NULL REFERENCES f_Artists(ArtistID),
--    AlbumName        VARCHAR(100) NOT NULL,
--    ReleaseDate        DATE NOT NULL DEFAULT '1901-01-01'
--);
--CREATE INDEX IX_AlbumNames ON f_Albums(AlbumName);
--CREATE INDEX IX_Artists ON f_Albums(ArtistID);

--CREATE TABLE f_Media(
--    MediaID            INT PRIMARY KEY IDENTITY,
--    MediaType        VARCHAR(10) NOT NULL    
--);

--CREATE TABLE f_Stock(
--    StockID            INT PRIMARY KEY IDENTITY,
--    AlbumID            INT NOT NULL REFERENCES f_Albums(AlbumID),
--    MediaID            INT NOT NULL REFERENCES f_Media(MediaID),
--    Quantity        INT NOT NULL DEFAULT 0,
--    Location        INT NOT NULL,
--	CONSTRAINT CK_Media CHECK(MediaID >= 1 AND MediaID <= 3)
--);

--CREATE INDEX IX_Albums ON f_Stock(AlbumID);
--CREATE INDEX IX_MediaTypes ON f_Stock(MediaID);

--CREATE TABLE f_Tracks(
--	AlbumID            INT NOT NULL REFERENCES f_Albums(AlbumID),
--    TrackID            INT NOT NULL,    
--    TrackName        VARCHAR(50) NOT NULL,
--    TrackLength        TIME, 
--    PRIMARY KEY(AlbumID, TrackID)
--);
--CREATE INDEX IX_Albums ON f_Tracks(AlbumID);

--CREATE TABLE f_Addresses(
--    AddressID        INT PRIMARY KEY IDENTITY,
--    Address1        VARCHAR(100) NOT NULL,
--    Address2        VARCHAR(100) NULL,
--    City            VARCHAR(50) NOT NULL,
--    State            VARCHAR(2) NOT NULL,
--    Zip                INT NOT NULL,
--	CONSTRAINT CK_StateAbbr CHECK (State LIKE '[A-Z][A-Z]')
--);

--CREATE TABLE f_Customers(
--    CustomerID        INT PRIMARY KEY IDENTITY,
--    FirstName        VARCHAR(50) NOT NULL,
--    LastName        VARCHAR(50) NOT NULL,
--    EmailAddress    VARCHAR(50) NOT NULL,
--    AddressID        INT NOT NULL REFERENCES f_Addresses(AddressID),
--	CONSTRAINT CK_Email CHECK (EmailAddress LIKE '%_@__%.__%')
--);
--CREATE INDEX IX_Addresses ON f_Customers(AddressID);
--CREATE INDEX IX_Emails ON f_Customers(EmailAddress);




--INSERT INTO f_Addresses
--VALUES('1709 Postcard Row', NULL, 'San Francisco', 'CA', 94117);
--INSERT INTO f_Customers
--VALUES('Bob', 'Saget', 'fullhouse@gmail.com', 1);

--INSERT INTO f_Addresses
--VALUES('200 Park Avenue', NULL, 'New York', 'NY', 10005);
--INSERT INTO f_Customers
--VALUES('Tony', 'Stark', 'ironman@yahoo.com', 2);

--INSERT INTO f_Addresses
--VALUES('1007 Mountain Drive', NULL, 'Gotham', 'NJ', 07003);
--INSERT INTO f_Customers
--VALUES('Bruce', 'Wayne', 'notbatman@hotmail.com', 3);

--INSERT INTO f_Addresses
--VALUES('1516 W. Wrightwood Ave', NULL, 'Chicago', 'IL', 60614);
--INSERT INTO f_Customers
--VALUES('Carl', 'Winslow', 'familymatters@gmail.com', 4);

--SELECT * FROM f_Customers;
--SELECT * FROM f_Addresses;


--INSERT INTO f_Media
--VALUES('CD');

--INSERT INTO f_Media
--VALUES('Vinyl');

--INSERT INTO f_Media
--VALUES('DVD');


--INSERT INTO f_Artists
--VALUES('Five Finger Death Punch');

--INSERT INTO f_Artists
--VALUES('Ice Nine Kills');


--INSERT INTO f_Albums
--VALUES(1, 'The Wrong Side of Heaven and the Righteous Side of Hell, Volume 1', '2013-07-30');

--INSERT INTO f_Albums
--VALUES(1, 'A Decade of Destruction', '2017-12-01');

--INSERT INTO f_Albums
--VALUES(2, 'Every Trick in the Book', '2015-12-04');

--INSERT INTO f_Albums
--VALUES(2, 'The Silver Scream', '2018-10-05');

SELECT * FROM f_Albums;


--INSERT INTO f_Tracks
--VALUES(4, 1, 'The American Nightmare', '00:04:10');

--INSERT INTO f_Tracks
--VALUES(4, 2, 'Thank God It''s Friday', '00:04:24');

--INSERT INTO f_Tracks
--VALUES(4, 3, 'Stabbing In The Dark', '00:04:37');

--INSERT INTO f_Tracks
--VALUES(4, 4, 'SAVAGES', '00:02:58');

--INSERT INTO f_Tracks
--VALUES(4, 5, 'The Jig Is Up', '00:03:58');

--INSERT INTO f_Tracks
--VALUES(4, 6, 'A Grave Mistake', '00:03:04');

--INSERT INTO f_Tracks
--VALUES(4, 7, 'Rocking The Boat', '00:04:06');

--INSERT INTO f_Tracks
--VALUES(4, 8, 'Enjoy Your Slay', '00:04:15');

--INSERT INTO f_Tracks
--VALUES(3, 1, 'The Nature Of The Beast', '00:03:38');

--INSERT INTO f_Tracks
--VALUES(3, 2, 'Communion Of The Cursed', '00:04:30');

--INSERT INTO f_Tracks
--VALUES(3, 3, 'Bloodbath & Beyond', '00:03:39');

--INSERT INTO f_Tracks
--VALUES(3, 4, 'The Plot Sickens', '00:03:41');

--INSERT INTO f_Tracks
--VALUES(3, 5, 'Star-Crossed Enemies', '00:03:45');

--INSERT INTO f_Tracks
--VALUES(3, 6, 'Me, Myself, & Hyde', '00:04:05');

--INSERT INTO f_Tracks
--VALUES(1, 1, 'Lift Me Up', '00:04:06');

--INSERT INTO f_Tracks
--VALUES(1, 2, 'Watch You Bleed', '00:03:43');

--INSERT INTO f_Tracks
--VALUES(1, 3, 'You', '00:03:02');

--INSERT INTO f_Tracks
--VALUES(1, 4, 'Wrong Side of Heaven', '00:04:31');

--INSERT INTO f_Tracks
--VALUES(1, 5, 'Burn MF', '00:03:38');

--INSERT INTO f_Tracks
--VALUES(1, 6, 'I.M.Sin', '00:03:29');

--INSERT INTO f_Tracks
--VALUES(1, 7, 'Anywhere But Here (feat. Maria Brink)', '00:03:46');

--INSERT INTO f_Tracks
--VALUES(2, 1, 'Trouble', '00:03:12');

--INSERT INTO f_Tracks
--VALUES(2, 2, 'Gone Away', '00:04:35');

--INSERT INTO f_Tracks
--VALUES(2, 3, 'Lift Me Up', '00:04:06');

--INSERT INTO f_Tracks
--VALUES(2, 4, 'Wash It All Away', '00:03:46');

--INSERT INTO f_Tracks
--VALUES(2, 5, 'Bad Company', '00:04:22');

--INSERT INTO f_Tracks
--VALUES(2, 6, 'Under and Over It', '00:03:38');

--INSERT INTO f_Tracks
--VALUES(2, 7, 'Wrong Side of Heaven', '00:04:31');

--INSERT INTO f_Tracks
--VALUES(2, 8, 'House of the Rising Sun', '00:04:07');

--INSERT INTO f_Tracks
--VALUES(2, 9, 'I Apologize', '00:04:03');


SELECT * FROM f_Tracks;

--SELECT DATEADD(ms, SUM(DATEDIFF(ms, '00:00:00.000', TrackLength)), '00:00:00.000') as time FROM f_Tracks;