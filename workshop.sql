SELECT name, Composer
FROM tracks;

SELECT *
from tracks;

SELECT DISTINCT Composer
FROM tracks;

SELECT DISTINCT AlbumId, MediaTypeId
FROM tracks;


SELECT TrackId, name
FROM tracks
WHERE Composer = "Jorge Ben";

SELECT *
FROM invoices
Where total>25;

SELECT *
FROM invoices
Where total<15 
limit 5;

SELECT *
FROM invoices
WHERE total>10
ORDER BY total DESC
LIMIT 2;


SELECT *
FROM invoices
WHERE NOT BillingCountry = "Canada";


SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId ASC, total DESC;

SELECT name
FROM tracks
Where name like 'B%' and name like '%s';

SELECT InvoiceDate as son
FROM invoices
WHERE InvoiceDate BETWEEN '2008-01-01' and '2012-01-01'
limit 1;

SELECT FirstName,LastName, country
From customers
WHERE country in ("Belgium", 'Norway');

Select name, Composer
from tracks
where Composer Like '&Zappa';

SELECT count(*)
from tracks;

SELECT count(*)
from invoices;

Select count(distinct Composer) as sayı
from tracks;

select AlbumId, count(name) as number_of_tracks
from tracks
group by AlbumId
order by Count(name) DESC;

SELECT name, max(Milliseconds),name, min(Milliseconds)
FROM tracks;

SELECT * 
from tracks
Where Milliseconds>(SELECT AVG(Milliseconds))
from track;


SELECT Composer, count(*)
from tracks
where Composer is not NULL 
group by Composer;

SELECT tracks.name, genres.name
FROM tracks
left join genres
on tracks.GenreId=genres.GenreId;

SELECT tracks.Name, genres.name
FROM tracks
left join genres
on tracks.GenreId=genres.GenreId; 

Select *
from artists
join albums
on artists.ArtistId = albums.ArtistId; 