CREATE VIEW [dbo].[vBook]
AS 
SELECT b.[Name] AS [BookName], d.[Description], d.[NumberOfPages], STRING_AGG(a.[FirstName] + ', ' + a.[LastName], ', ') AS [AuthorsName], p.[Name] AS [PublisherName]
FROM [Books] AS b, [BookDetails] AS d, [Authors] AS a, [Publishers] AS p
GROUP BY b.[Name], d.[Description], d.[NumberOfPages], p.[Name];

