CREATE PROCEDURE [dbo].[spGetBooks]
    @authorFirstName NVARCHAR = NULL,
    @authorLastName NVARCHAR = NULL
AS
    SELECT b.[Id], [Name]
    FROM [Books] AS b LEFT JOIN [Authors] AS a ON b.[Id] = a.[Id] 
    WHERE a.FirstName = @authorFirstName AND a.LastName = @authorLastName;
