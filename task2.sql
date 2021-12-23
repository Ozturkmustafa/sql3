   /* How many tracks does each album have? 
	Your solution should include Album id and its number of tracks sorted from highest to lowest.*/
	SELECT * FROM tracks;
	
	SELECT name AS Album_Name, AlbumId
	FROM tracks
	ORDER BY AlbumId DESC;

	/* Find the album title of the tracks. Your solution should include track name and its album title.*/
	SELECT * FROM tracks;
	SELECT * FROM albums;

	SELECT name, Title
	FROM tracks t
	JOIN albums a
	ON t.name = a.Title;

    /*Find the minimum duration of the track in each album.
	Your solution should include album id, 
	album title and duration of the track sorted from highest to lowest.*/
	
	SELECT min(Milliseconds) FROM tracks;
	
	
	SELECT AlbumId, name, Milliseconds
	FROM tracks
	ORDER BY Milliseconds;
	

    /*Find the total duration of each album. 
	Your solution should include album id,
	album title and its total duration sorted from highest to lowest.*/
	
	SELECT sum(Milliseconds/100.0)
	FROM tracks;
	
	SELECT AlbumId, name, Milliseconds/100.0
	FROM tracks	
	ORDER by Milliseconds desc;

	
    /*Based on the previous question, 
	find the albums whose total duration is higher than 70 minutes. 
	Your solution should include album title and total duration.?*/
	
	
	SELECT sum(Milliseconds)
	FROM tracks;
	
	SELECT Name, Milliseconds
	FROM tracks
	WHERE (Milliseconds) >420000;
	
	
