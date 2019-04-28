CREATE TABLE [dbo].[BookDetails]
(
    [Id] INT NOT NULL PRIMARY KEY,
    [Description] NVARCHAR(MAX),
    [NumberOfPages] INT

    CONSTRAINT [FK_Books_BookDetails] FOREIGN KEY ([Id]) REFERENCES [Books]([Id]) 
)
