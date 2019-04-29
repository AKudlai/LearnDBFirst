CREATE FUNCTION [dbo].[BooksCount]
(
    @firstName NVARCHAR(256),
    @lastName NVARCHAR(256)
)
RETURNS INT
AS
BEGIN
    DECLARE @result INT;
    SET @result =
    (SELECT COUNT([Name])
    FROM [Books] AS b  
    LEFT JOIN [Authors] AS a ON b.[Id] = a.[Id]
    WHERE a.[FirstName] = @firstName  AND a.[LastName] = @lastName)
    RETURN @result
END
