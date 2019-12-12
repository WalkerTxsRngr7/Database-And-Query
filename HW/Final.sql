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

--INSERT INTO f_Artists
--VALUES('Falling in Reverse');

--INSERT INTO f_Artists
--VALUES('Avantasia');


--INSERT INTO f_Albums
--VALUES(1, 'The Wrong Side of Heaven and the Righteous Side of Hell, Volume 1', '2013-07-30');

--INSERT INTO f_Albums
--VALUES(1, 'A Decade of Destruction', '2017-12-01');

--INSERT INTO f_Albums
--VALUES(2, 'Every Trick in the Book', '2015-12-04');

--INSERT INTO f_Albums
--VALUES(2, 'The Silver Scream', '2018-10-05');

--INSERT INTO f_Albums
--VALUES(4, 'The Mystery of Time', '2013-04-26');

--INSERT INTO f_Albums
--VALUES(4, 'Ghostlights', '2016-01-29');

--INSERT INTO f_Albums
--VALUES(3, 'The Drug in Me Is You', '2011-07-25');

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

--INSERT INTO f_Tracks
--VALUES(8, 1, 'Raised by Wolves', '00:03:25');

--INSERT INTO f_Tracks
--VALUES(8, 2, 'Tragic Magic', '00:04:06');

--INSERT INTO f_Tracks
--VALUES(8, 3,  'The Drug in Me Is You', '00:03:39');

--INSERT INTO f_Tracks
--VALUES(8, 4, 'Im Not a Vampire', '00:03:52');

--INSERT INTO f_Tracks
--VALUES(8, 5, 'Good Girls, Bad Guys', '00:03:15');

--INSERT INTO f_Tracks
--VALUES(8, 6, 'Pick Up the Phone', '00:04:38');

--INSERT INTO f_Tracks
--VALUES(8, 7, 'Dont Mess With Ouija Boards', '00:04:56');

--INSERT INTO f_Tracks
--VALUES(8, 8, 'Sink or Swim', '00:04:45');

--INSERT INTO f_Tracks
--VALUES(8, 9, 'Caught Like a Fly', '00:04:37');

--INSERT INTO f_Tracks
--VALUES(8, 10, 'Goodbye Graceful', '00:04:48');

--INSERT INTO f_Tracks
--VALUES(8, 11, 'The Westerner', '00:03:52');

--/*************** Album 6 Tracks Inserts ***************/
--INSERT INTO f_Tracks
--VALUES(6, 1, 'Spectres', '00:06:09');

--INSERT INTO f_Tracks
--VALUES(6, 2, 'The Watchmakers Dream', '00:04:14');

--INSERT INTO f_Tracks
--VALUES(6, 3, 'Black Orchid', '00:06:52');

--INSERT INTO f_Tracks
--VALUES(6, 4, 'Where Clock Hands Freeze', '00:04:35');

--INSERT INTO f_Tracks
--VALUES(6, 5, 'Sleepwalking', '00:03:52');

--INSERT INTO f_Tracks
--VALUES(6, 6, 'Savior in the Clockwork', '00:10:40');

--INSERT INTO f_Tracks
--VALUES(6, 7, 'Invoke the Machine', '00:05:30');

--INSERT INTO f_Tracks
--VALUES(6, 8, 'Whats Left of Me', '00:05:07');

--INSERT INTO f_Tracks
--VALUES(6, 9, 'Dweller in a Dream', '00:04:45');

--INSERT INTO f_Tracks
--VALUES(6, 10, 'The Great Mystery', '00:10:03');

--/*************** Album 7 Tracks Inserts ***************/
--INSERT INTO f_Tracks
--VALUES(7, 1, 'Mystery of a Blood Red Rose', '00:03:51');

--INSERT INTO f_Tracks
--VALUES(7, 2, 'Let the Storm Descend Upon You', '00:12:09');

--INSERT INTO f_Tracks
--VALUES(7, 3, 'The Haunting', '00:04:42');

--INSERT INTO f_Tracks
--VALUES(7, 4, 'Seduction of Decay', '00:07:18');

--INSERT INTO f_Tracks
--VALUES(7, 5, 'Ghostlights', '00:05:43');

--INSERT INTO f_Tracks
--VALUES(7, 6, 'Draconian Love', '00:04:58');

--INSERT INTO f_Tracks
--VALUES(7, 7, 'Master of the Pendulum', '00:05:01');

--INSERT INTO f_Tracks
--VALUES(7, 8, 'Isle of Evermore', '00:04:28');

--INSERT INTO f_Tracks
--VALUES(7, 9, 'Babylon Vampyres', '00:07:09');

--INSERT INTO f_Tracks
--VALUES(7, 10, 'Lucifer', '00:03:48');

--INSERT INTO f_Tracks
--VALUES(7, 11, 'Unchain the Light', '00:05:03');

--INSERT INTO f_Tracks
--VALUES(7, 12, 'A Restless Heart and Obsidian Skies', '00:05:53');

--INSERT INTO f_Tracks
--VALUES(7, 13, 'Wake up to the Moon', '00:04:43');

SELECT * FROM f_Tracks;



--INSERT INTO f_Stock
--VALUES(1, 1, 20, 1);

--INSERT INTO f_Stock
--VALUES(1, 2, 10, 2);

--INSERT INTO f_Stock
--VALUES(1, 3, 5, 3);

--INSERT INTO f_Stock
--VALUES(2, 1, 15, 1);

--INSERT INTO f_Stock
--VALUES(2, 2, 5, 2);

--INSERT INTO f_Stock
--VALUES(2, 3, 10, 3);

--INSERT INTO f_Stock
--VALUES(3, 1, 2, 1);

--INSERT INTO f_Stock
--VALUES(3, 2, 5, 2);

--INSERT INTO f_Stock
--VALUES(3, 3, 0, 3);

--INSERT INTO f_Stock
--VALUES(4, 1, 12, 1);

--INSERT INTO f_Stock
--VALUES(4, 2, 0, 2);

--INSERT INTO f_Stock
--VALUES(4, 3, 7, 3);

--INSERT INTO f_Stock
--VALUES(6, 1, 25, 1);

--INSERT INTO f_Stock
--VALUES(6, 2, 15, 2);

--INSERT INTO f_Stock
--VALUES(6, 3, 11, 3);

--INSERT INTO f_Stock
--VALUES(7, 1, 22, 1);

--INSERT INTO f_Stock
--VALUES(7, 2, 14, 2);

--INSERT INTO f_Stock
--VALUES(7, 3, 9, 3);

--INSERT INTO f_Stock
--VALUES(8, 1, 9, 1);

--INSERT INTO f_Stock
--VALUES(8, 2, 12, 2);

--INSERT INTO f_Stock
--VALUES(8, 3, 2, 3);


/* 1. What albums and songs are currently in stock */
SELECT ArtistName, AlbumName,  MediaType, Quantity  FROM f_Albums
JOIN f_Artists On f_Albums.ArtistID = f_Artists.ArtistID
JOIN f_Stock On f_Albums.AlbumID = f_Stock.AlbumID
JOIN f_Media On f_Stock.MediaID = f_Media.MediaID
WHERE Quantity > 0;

/* 2. What albums where published during a given year */
SELECT ArtistName, AlbumName,  MediaType, Quantity FROM f_Albums
JOIN f_Artists On f_Albums.ArtistID = f_Artists.ArtistID
JOIN f_Stock On f_Albums.AlbumID = f_Stock.AlbumID
JOIN f_Media On f_Stock.MediaID = f_Media.MediaID
WHERE YEAR(ReleaseDate) = 2013;

/* 3. What albums in stock are on CD */
SELECT ArtistName, AlbumName,  MediaType, Quantity  FROM f_Albums
JOIN f_Artists On f_Albums.ArtistID = f_Artists.ArtistID
JOIN f_Stock On f_Albums.AlbumID = f_Stock.AlbumID
JOIN f_Media On f_Stock.MediaID = f_Media.MediaID
WHERE Quantity > 0 AND f_Stock.MediaID = 1;

/* 4. List all of the songs and albums for a given artist (your choice) */
SELECT AlbumName, ArtistName, TrackName, TrackLength FROM f_Albums
JOIN f_Artists On f_Albums.ArtistID = f_Artists.ArtistID
JOIN f_Tracks On f_Albums.AlbumID = f_Tracks.AlbumID
WHERE ArtistName = 'Avantasia'  ORDER BY AlbumName DESC;
/* 5. For a given song, what is the album, group and row number */
SELECT TrackName, AlbumName, ArtistName, Location FROM f_Tracks
JOIN f_Albums On f_Tracks.AlbumID = f_Albums.AlbumID
JOIN f_Artists On f_Albums.ArtistID = f_Artists.ArtistID
JOIN f_Stock On f_Albums.AlbumID = f_Stock.AlbumID
WHERE TrackName = 'Stabbing in the Dark' AND MediaID = 1;

/* 6. List all of the albums for a given row (your choice) */
SELECT Location, AlbumName, ArtistName FROM f_Albums
JOIN f_Artists On f_Albums.ArtistID = f_Artists.ArtistID
JOIN f_Stock On f_Albums.AlbumID = f_Stock.AlbumID
JOIN f_Media On f_Stock.MediaID = f_Media.MediaID
WHERE Location = 2;

/* 7. Which album has the most songs */
SELECT TOP 1 AlbumName, ArtistName, COUNT(TrackName) AS Tracks 
FROM f_Albums 
    JOIN f_Artists ON f_Albums.ArtistID = f_Artists.ArtistID
    INNER JOIN f_Tracks ON f_Albums.AlbumID = f_Tracks.AlbumID    
GROUP BY AlbumName, ArtistName
ORDER BY COUNT(TrackName) DESC;


--SELECT DATEADD(ms, SUM(DATEDIFF(ms, '00:00:00.000', TrackLength)), '00:00:00.000') as time FROM f_Tracks;