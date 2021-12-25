/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
	-- COUNT
	-------------------------------------------------------------------------------------------------	
	/* invoices tablosunda kaç adet fatura bulunduğunu döndüren sorgu */
	
	
	SELECT COUNT(*)
	FROM invoices;
	
	SELECT COUNT(InvoiceId) AS num_of_invoice
	FROM invoices;
	
	/* tracks tablosunda kaç adet farklı Composer bulunduğunu döndüren sorguyu yazınız*/
	
	SELECT count(distinct Composer) AS Besteci
	FROM tracks;
	
	/* **ÖDEV** invoices tablosunda kaç adet farklı yıl olduğunu hesaplayan sorguyu yazınız*/ 
	
	/* tracks tablosundaki şarkı süresi en kısa olan şarkının adını ve süresi listeleyen
	sorguyu yaziniz */
	
	SELECT name as Song_Name, min(Milliseconds) as Duration
	FROM tracks;
	
	SELECT MIN(Grade), MAX(Grade)
	FROM students;
	
	-- SUM,AVG
	-------------------------------------------------------------------------------------------------	
	/* invoices  tablosundaki faturaların toplam değerini listeyiniz */	
	
	
	SELECT SUM(total) AS Toplam_Gelir
	FROM invoices;
	
	/* **ÖDEV** invoices  tablosunda 2009 ile 2013 tarihileri arasındaki faturaların toplam değerini listeyiniz */
	
	/* invoices  tablosundaki faturaların ortalama değerini listeyiniz */
	
	SELECT ROUND(AVG(total),2) AS ortalama_gelir
	FROM invoices;
	
	/* tracks tablosundaki şarkıların ortalama süresinden daha uzun olan 
	şarkıların adlarını listeleyiniz */
	
	SELECT ROUND(AVG(Milliseconds))
	FROM tracks;
	
	SELECT Name, Milliseconds
	FROM tracks
	WHERE Milliseconds > 393599;
	
    /* tracks tablosundaki şarkıların ortalama süresinden daha uzun olan 
	şarkıların adlarını listeleyiniz */
	
	SELECT Name, Milliseconds
	FROM tracks
	WHERE Milliseconds > (SELECT ROUND(AVG(Milliseconds))
						  FROM tracks);
						  
	/*===================================================
	GROUP BY
	====================================================*/

	/* tracks tablosundaki her bir Bestecisinin (Composer) toplam şarkı sayısını 
	Besteci adına göre gruplandırarak listeleyen sorguyu yazınız. */
	
	SELECT Composer, COUNT(name) AS Song_Count
	FROM tracks
	WHERE Composer IS NOT NULL
	GROUP BY Composer;
	
	/* customers tablosundaki müşterilerin sayılarını Ülkelerine (Country) göre gruplandırarak 
	ve müşteri sayısına göre AZALAN şekilde sıralayarak listeleyen sorguyu yazınız*/
	
	SELECT country, COUNT(FirstName) AS nu_of_cust
	FROM customers
	GROUP BY country
	ORDER BY nu_of_cust DESC;
	
	/* customers tablosundaki müşterilerin sayılarını Ülkelerine (Country) ve Şehirlerine (City) 	
	göre gruplandırarak listeleyen sorguyu yazınız*/
	
	SELECT country, City, COUNT(FirstNAme) AS nu_of_cust
	from customers
	GROUP BY country, City;
	
	/* invoices tablosundaki her bir ülkenin (BillingCountry) fatura ortalamalarını 
	hesaplayan ve ülke bilgileri ile listeleyen sorguyu yazınız.*/
	
	SELECT BillingCountry, ROUND(avg(total),2) AS ort_fatura
	FROM invoices
	WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31 23:59:59'
	GROUP BY BillingCountry;
	
	
	
	SELECT count(AlbumId) as num_album
	FROM tracks
	ORDER BY TrackId DESC;