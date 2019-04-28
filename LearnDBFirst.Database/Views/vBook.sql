CREATE VIEW [dbo].[vBook]
AS 
SELECT b.[Name] AS [BookName], d.[Description], d.[NumberOfPages], a.[FirstName] + ', ' + a.[LastName] AS [AuthorsName], p.[Name] AS [PublisherName]
FROM [Books] AS b, [BookDetails] AS d, [Authors] AS a, [Publishers] AS p;
