/*
The Chinook database contains details of an online music store.
Here are some example answers to the question
*/

-- List all customers
select * 
from Customer c 

-- List all customers. Show only the CustomerId, FirstName and LastName columns


-- List customers in the United Kingdom  
SELECT * FROM Customer c WHERE c.Country = 'United Kingdom'

-- List customers whose first names begins with an A.
SELECT 
CustomerId, 
FirstName, 
LastName, 
Country
FROM Customer c 
WHERE c.FirstName like 'A%'


-- List Customers with an apple email address
SELECT 
CustomerId, 
FirstName, 
LastName, 
Country,
c.Email
FROM Customer c 
WHERE c.Email like '%@apple.%'

-- Which customers have the initials LK?


-- Which are the corporate customers i.e. those with a value, not NULL, in the Company column?

-- How many customers are in each country.  Order by the most popular country first.
SELECT
c.Country,
count(*) as total_customers
from Customer c
Group by c.Country
Order by total_customers DESC

-- When was the oldest employee born?  Who is that?
SELECT top 1
e.BirthDate
FROM Employee e

SELECT 
min (e.birthdate)
FROM Employee e


-- List the 10 latest invoices. Include the InvoiceId, InvoiceDate and Total
SELECT top 10
i.InvoiceId,
i.InvoiceDate,
i.Total
FROM Invoice i
ORDER BY i.InvoiceDate DESC


-- Then  also include the customer full name (first and last name together)

SELECT top 10
i.InvoiceId,
i.InvoiceDate,
i.Total,
c.FirstName + ' ' + c.LastName AS CustomerName
FROM Invoice i
INNER JOIN customer c ON i.CustomerId=c.CustomerId
ORDER BY i.InvoiceDate DESC


SELECT top 10
i.InvoiceId,
i.InvoiceDate,
i.Total,
CONCAT(c.FirstName,' ',c.LastName,' ',i.InvoiceId) AS CustomerName
FROM Invoice i
INNER JOIN customer c ON i.CustomerId=c.CustomerId
ORDER BY i.InvoiceDate DESC
-- List the customers who have spent more than £45

SELECT
c.CustomerId,
SUM(i.Total) as TotalValue
from Customer c
JOIN invoice i ON i.CustomerId=c.CustomerId 
GROUP BY c.CustomerId
HAVING SUM(i.Total) > 45



-- List the City, CustomerId and LastName of all customers in Paris and London, 
-- and the Total of their invoices
	
-- Show all details about customer Michelle Brooks.  List salient details of her invoices.

/*
Which employees were born in the 1960s?  Show only the EmployeeId, FirstName, LastName and BirthDate columns
Note: Define a date value as with the region independent format 'yyyy-mm-dd' e.g. '1969-12-31'
*/


-- List countries, and the number of customers and the total invoiced amount
-- Order  high to low in terms of the number of customers

-- What are the top 10 most popular artists in terms of number of tracks bought by customers?

-- List the albums in alphabetical order of Title

-- List 10 albums and their artist.  Order by album title.

