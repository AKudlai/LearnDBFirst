CREATE TABLE [dbo].[BooksAuthors]
(    
    [BookId] INT NOT NULL,
    [AuthorId] INT NOT NULL,
    CONSTRAINT [FK_BooksAuthors_Books] FOREIGN KEY ([BookId]) REFERENCES [Books]([Id]),
    CONSTRAINT [FK_BooksAuthors_Authors] FOREIGN KEY ([AuthorId]) REFERENCES [Authors]([Id])
    --CONSTRAINT [PK_BooksAuthors] PR KEY ([BookId]) REFERENCES [Books]([Id])
, 
    CONSTRAINT [PK_BooksAuthors] PRIMARY KEY ([BookId], [AuthorId])
)
