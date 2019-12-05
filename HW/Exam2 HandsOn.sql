USE wg0742700;
GO

CREATE TABLE tr_Artists(
	ArtistID		INT PRIMARY KEY IDENTITY,
	ArtistName		VARCHAR(100) NOT NULL,
	Notes			VARCHAR(MAX)
);

CREATE TABLE tr_ReleaseID(
	ReleaseID		INT PRIMARY KEY IDENTITY,
	ArtistID		INT REFERENCES tr_Artists(ArtistID),
	AlbumName		VARCHAR(100) NOT NULL,
	AlbumReleaseDate DATE NOT NULL,
	PublisherID		INT
);

CREATE TABLE tr_Tracks(
	ReleaseID		INT REFERENCES tr_ReleaseID(ReleaseID),
	TrackID			INT NOT NULL,
	SongName		VARCHAR(100) NOT NULL,
	SongLength		TIME
	CONSTRAINT		PK_Album PRIMARY KEY (ReleaseID, TrackID)
);

CREATE INDEX IX_Artists ON tr_ReleaseID(ArtistID);
CREATE INDEX IX_Albums ON tr_Tracks(ReleaseID,TrackID);


SELECT * FROM tr_Artists
	JOIN tr_ReleaseID 
		ON tr_ReleaseID.ArtistID = tr_Artists.ArtistID
	JOIN tr_Tracks
		ON tr_Tracks.ReleaseID = tr_ReleaseID.ReleaseID;
