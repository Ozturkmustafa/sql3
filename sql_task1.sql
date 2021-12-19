/*Write a query that displays InvoiceId, 
CustomerId and total dollar amount for each invoice, 
sorted first by CustomerId (in ascending order),
 and then by total dollar amount  (in descending order).*/
 
 
 SELECT InvoiceId, CustomerId, total
 FROM invoices
 ORDER BY CustomerId ASC, total DESC;
 

/* Write a query that displays InvoiceId,
 CustomerId and total dollar amount for each invoice, 
 but this time sorted first by total dollar amount (in descending order),
 and then by CustomerId (in ascending order).*/
 
 SELECT InvoiceId, CustomerId, total
 FROM invoices
 ORDER BY total DESC, CustomerId ASC;

 
 /* Compare the results of these two queries above. 
How are the results different when you switch the column you sort on first? 
(Explain it in your own words.)*/

/*## 1.question we write a CustomerId first after total amount of and than 2. question
 we write a total first and sqlite ordered this result. ##*/



/* Write a query to pull the first 10 rows and all columns from the
 invoices table that have a dollar amount of total greater than or equal to 10.*/
 
 SELECT *
 FROM invoices
 WHERE total=10
 LIMIT 10;
/* Write a query to pull the first 5 rows 
and all columns from the invoices table that have 
a dollar amount of total less than 10.*/

SELECT *
FROM invoices
WHERE total<10
LIMIT 5;

/* Find all track names that start with 'B' and end with 's'.*/

SELECT *
FROM tracks
WHERE Name like "B%s";

/* Use the invoices table to find all information 
regarding invoices whose billing address is USA or Germany 
or Norway or Canada and invoice date is at any point in 2010, 
sorted from newest to oldest.*/



SELECT *
FROM invoices 
WHERE BillingCountry="USA" OR BillingCountry="Germany" OR BillingCountry="Norway" 
OR BillingCountry="Canada" BETWEEN '2010-01-01' AND '2010-31-12 23:59:59'
ORDER BY InvoiceDate ASC;