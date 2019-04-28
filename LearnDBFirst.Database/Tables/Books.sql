CREATE TABLE [dbo].[Books]
(
    [Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(100) NOT NULL,
    [isActive] BIT,
    [PublisherId] INT

    CONSTRAINT [FK_Books_Publishers] FOREIGN KEY ([PublisherId]) REFERENCES [Publishers]([Id])
)
