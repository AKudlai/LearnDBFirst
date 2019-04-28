CREATE TABLE [dbo].[BooksAuthors]
(
    [Id] INT NOT NULL PRIMARY KEY,
    [BookId] INT NOT NULL,
    [AuthorId] INT NOT NULL,
    CONSTRAINT [FK_BooksAuthors_Books] FOREIGN KEY ([BookId]) REFERENCES [Books]([Id]),
    CONSTRAINT [FK_BooksAuthors_Authors] FOREIGN KEY ([AuthorId]) REFERENCES [Authors]([Id])

)
