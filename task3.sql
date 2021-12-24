/*Single-Row Subqueries:*/

    /*Write a query to find the maximum duration among the tracks. Your query should include TrackId, Name, Milliseconds.*/
	
	SELECT TrackId, name, Milliseconds
	FROM tracks
	ORDER BY Milliseconds DESC;
	
	SELECT TrackId, name, max(Milliseconds)
	FROM tracks;


    /*Write a query to find the minimum duration among the tracks. Your query should include TrackId, Name, Milliseconds.*/

	SELECT TrackId, name, min(Milliseconds)
	FROM tracks;
	
	SELECT TrackId, name, Milliseconds
	FROM tracks
	ORDER BY Milliseconds ASC;
	
    /*Write a query to find the tracks whose bytes are higher than the average of the bytes of all tracks. 
	Your query should include TrackId, Name, Bytes, general average and should be ordered by Bytes from highest to lowest. 
	General average is the average of all tracks. General average should repeat in every row. 
	(Hint: You need to use two subqueries)*/
	
	SELECT TrackId, name, Bytes
	FROM tracks
	ORDER BY Bytes DESC;
	
	SELECT TrackId, name, Bytes
	FROM tracks
	WHERE Bytes > (SELECT round(avg(Bytes)
				   FROM tracks);
				   
				   
				   
	 /*Multiple-Row Subqueries:*/

    /*Write a query that returns the customers whose sales representatives are Jane Peacock and Margaret Park. 
	Your query should include CustomerID, First Name and Last Name of the customers.*/
	
	SELECT CustomerId, FirstName, LastName
	FROM customers
	WHERE (FirstName == 'Jane' AND LastName == 'Peacock') OR (FirstName == 'Margaret' AND LastName == 'Park');
	
	
	
    /*Rewrite the subquery above using the JOIN.*/
	SELECT * FROM customers;
	
	
	SELECT c.CustomerId, c.FirstName, c.LastName
	FROM customers c
	JOIN customers 
	ON (c.FirstName and c.LastName) or (c.FirstName == 'Margaret' AND c.LastName == 'Park');
	
	
	/* DDL (CREATE, ALTER, DELETE) and DML (SELECT, INSERT, UPDATE, DELETE) Statements  */

    /*Create a table inside the chinook database. This table tracks the employees’ courses inside the organization. 
	Your table should have the followings features:

               Name of the table: courses
               Columns:
                    CourseId (Primary Key)
                    CourseName (Cannot be null)
                    EmployeeId (Foreign Key - Refers to EmployeeId of employees table ) 
                    CoursePrice */
	
	
	CREATE TABLE if not exists courses(
		CourseID INT,
		CourseName TEXT
		Employee_id INTEGER,
		CoursePrice REAL,
		PRIMARY KEY(CourseId),
		FOREIGN KEY(EmployeeId)
	);
		

     /* 2. Insert at least 5 rows into the courses table. 
	  Your EmployeeId should contain the values of the EmployeeId column on the employees table.
	  You’re free to choose any values for other columns (CourseId, CourseName, CoursePrice)*/
	  
	  INSERT INTO courses VALUES (123456,'Mike', 12, 5000);

    /*Delete the last row of your courses table.*/
	
	ALTER TABLE courses
	DROP ROW ;


    /*Add a new column to your courses table named StartDate. The new column cannot be null.*/

	ALTER TABLE courses
	ADD StartDate DEFAULT not exists NULL;
    /*Delete the CoursePrice column.*/
	ALTER TABLE courses
	DROP COLUMN CoursePrice;

    /*Delete the courses table.*/
	
	DROP courses


