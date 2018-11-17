CREATE TABLE [dbo].[Sessions]
(
    [Id]          INT NOT NULL IDENTITY(1, 1),
    [UserId]      INT NOT NULL,
    [Token]       VARCHAR(255) NOT NULL,
    [ExpiredDate] DATETIME NOT NULL

    CONSTRAINT PK_Sessions PRIMARY KEY CLUSTERED ( [Id] ),
    CONSTRAINT FK_Sessions_Logins FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[Logins]( [Id] )
  )