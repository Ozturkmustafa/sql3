/*===================================================
 SUBQUERIES
====================================================*/


	/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini SUBQUERY yazarak listeyiniz.
	Listelemede trackid, name ve albumid bilgilerini bulunmalıdır. */
	
	SELECT * from albums;
	
	SELECT TrackId,name,AlbumId
	FROM tracks
	WHERE AlbumId = (SELECT AlbumId
								FROM albums
								WHERE Title = 'Faceless');
	
	/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini JOIN kullanarak listeyiniz.
	Listelemede trackid, name ve albumid bilgileri bulunmalıdır. */	
	
	SELECT t.TrackId, t.name, t.AlbumId
	FROM tracks t
	JOIN albums a
	ON t.AlbumId = a.AlbumId
	WHERE a.Title = 'Faceless';
	
	/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini SUBQUERY yazarak listeyiniz.
	Listelemede trackid, name ve albumid bilgilerini bulunmalıdır. */
	
	
	