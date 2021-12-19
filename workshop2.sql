/*Tracks tablosundan TRACKS NAME ve COMPOSER ı getiren bir 
sorgu yazınız */

SELECT name,Composer
FROM tracks;


/*Tracks tablosundan tüm sütunları getiren bir 
sorgu yazınız */

SELECT *
FROM tracks;


/*Her parçanın bestecilerinin adını döndüren 
bir sorgu yazınız */

SELECT DISTINCT Composer
FROM tracks;


/*Tracks tablosundan benzersiz AlbumId ve MediaTypeId 
döndüren bir sorgu yazınız */


SELECT DISTINCT AlbumId,MediaTypeId
FROM tracks;



/*"Jorge Ben" adlı bestecinin TrackId ve Track_name lerini
döndüren bir sorgu yazınız*/

SELECT TrackId,name,Composer
FROM tracks
WHERE Composer = 'Jorge Ben';


/*Invoices tablosundan toplam tutarı 25 TL den büyük olan faturaların
tüm bilgilerini döndüren bir sorgu yazınz. */

SELECT *
FROM invoices
WHERE total>25;

/*TOPLAM TUTARı 15 TL'DEN AZ OLAN FATURALARıN TÜM BILGILERINI
 DÖNDÜREN BIR SORGU YAZıN VE SADECE ILK 5 SATIRI GÖRÜNTÜLEYİN */

SELECT *
FROM invoices
WHERE total<15
LIMIT 5;
 
 
/*TOPLAM TUTARı 10 TL'DEN BÜYÜK OLAN FATURALARıN
TÜM BILGILERINI DÖNDÜREN BIR SORGU YAZıN.
SONRA TOPLAM TUTARLARı AZALAN DÜZENDE SıRALAYıN,
SON OLARAK ILK 2 SATıRı GÖRÜNTÜLEYIN */

SELECT *
FROM invoices
WHERE total>10
ORDER BY total DESC
LIMIT 2 ;



/*FATURALAMA ÜLKESININ KANADA OLMADıĞı FATURALARıN
TÜM BILGILERINI DÖNDÜREN BIR SORGU YAZıN.
SONRA TOPLAM TUTARLARı ARTAN SıRADA SıRALAYıN, 
SON OLARAK ILK 10 SATıRı GÖRÜNTÜLEYIN*/


SELECT *
from invoices
WHERE NOT BillingCountry = 'Canada';


/*INVOICES TABLOSUNDAN HER FATURA IÇIN INVOICEID, CUSTOMERID VE
 TOTAL DOLLAR AMOUNT DÖNDÜRÜR BIR SORGU YAZıN.
 SONRA BUNLARı CustomerId YE GÖRE ARTAN
 TOTAL DOllara GÖRE AZALAN ŞEKİLDE SıRALAYıN*/
 
SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER BY CustomerId ASC, total desc;
  
 
/*TRACKS TABLOSUNDAN 'B' ILE BAŞLAYAN VE 'S' ILE BITEN 
 TÜM ŞARKILARIN ŞARKI ADLARıNı DÖNDÜREN BIR SORGU YAZıN*/
 
SELECT name
from tracks
--where name like 'B%' AND name like '%S'
where name like 'B%S';
 
 
/*INVOICES TABLOSUNDAN 2008 İLE 2011 TARİHLERİ ARASINDAKİ 
EN YENİ FATURA TARİHİNİ VEREN sorguyu YAZIN */

SELECT MAX(InvoiceDate) AS SON 
FROM invoices
WHERE InvoiceDate BETWEEN '2008-01-01' AND '2012-01-01';

 
/*CUSTOMERS TABLOSUNDAN NORVEÇ VE BELÇIKA'DAN SIPARIŞ VEREN MÜŞTERILERIN 
ADıNı VE SOYADıNı DÖNDÜREN BIR SORGU YAZıN*/

SELECT FirstName,LastName,country
FROM customers
WHERE country IN ('Belgium','Norway');


/*'ZAPPA' SOYADLI BESTECİNİN TRACKS_NAME LERINI DÖNDÜREN BIR SORGU YAZıN*/

SELECT name,Composer
FROM tracks
WHERE Composer LIKE '%zappa';


/*DIJITAL MÜZIK MAĞAZASıNDA KAÇ TRACKS VE INVOICES VAR, AYRı AYRı GÖRÜNTÜLE*/
 
SELECT count(*)
from tracks;

SELECT count(*)
from invoices;


/*DIJITAL MÜZIK MAĞAZASıNDA KAÇ FARKLI COMPOSER VAR, */

SELECT count(DISTINCT Composer) as sayı
from tracks;

 
/*HOW MANY TRACKS DOES EACH ALBUM HAVE, DISPLAY ALBUMID AND
NUMBER OF TRACKS SORTED FROM HIGHEST TO LOWEST*/
--???????????????????????????????????????????????

SELECT AlbumId,count(*)as number_of_tracks
from tracks
GROUP BY AlbumId
ORDER BY number_of_tracks desc;


/* TRACKS TABLOSUNDAN MINIMUM VE MAXIMUM DURATİON A SAHİP OLAN
ŞARKILARIN ADINI AYRI AYRI DÖNÜREN BİR SORGU YAZINIZ */


SELECT name, max(Milliseconds)
FROM tracks;

SELECT name, min(Milliseconds)
FROM tracks;


/*ORTALAMA SÜREDEN DAHA AZ SÜREYE SAHIP PARÇALARı DÖNDÜREN
 BIR SORGU YAZıN*/
  

SELECT * 
FROM tracks
WHERE Milliseconds>(SELECT avg(Milliseconds)
from tracks);

/*WRITE A QUERY THAT RETURNS THE TOTAL NUMBER OF EACH
COMPOSER’s TRACK*/

select composer, count(*)
FROM tracks
where composer is NOT NULL
GROUP BY composer;



/*TRACKS TABLOSUNDAKİ HER PARÇA TÜRÜNÜ(GENRE) DÖNDÜREN BİR SORGU YAZIN.*/

SELECT tracks.name, genres.name
from tracks
join Genres
on tracks.GenreId=genres.GenreId;




/*SANATÇININ ALBÜM BİLGİLERİNİ(ALBUM INFO) DÖNDÜREN BİR SORGU YAZIN*/

SELECT * 
from artists
JOIN albums
on artists.ArtistId = albums.ArtistId;



/*HER ALBÜMDE ALBÜM ID , ALBÜM İSMİ(NAME) VE PARÇA SÜRESİ'Nİ
 GÖRÜNTÜLEYİN. SONRA BUNLARI YÜKSEKTEN DÜŞÜĞE DOĞRU SIRALAYIN*/
--???????????????????????????????????????????????



 
 
/*TOPLAM SÜRESI 60 DAKIKADAN YÜKSEK OLAN ALBÜMLERI DÖNDÜREN
 BIR SORGU YAZıN. SONRA SONUCU YÜKSEKTEN DÜŞÜĞE DOĞRU SıRALAYıN*/
--???????????????????????????????????????????????
 
 
 
/*ADI 'Prenda Minha', 'Gecenin Kalbi' VE 'Sürgünden'
OLAN ALBÜMLERİN TRACKID, PARÇA ADI VE ALBÜMD BİlGİSİnİ
DÖNDÜREN Bİr SORGU YAZIN.*/
