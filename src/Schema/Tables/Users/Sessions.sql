CREATE TABLE [dbo].[Sessions]
(
    [SessionId]   INT NOT NULL IDENTITY(1, 1),
    [UserId]      INT NOT NULL,
    [Token]       VARCHAR(255) NOT NULL,
    [ExpiredDate] DATETIME NOT NULL

    CONSTRAINT PK_Sessions PRIMARY KEY CLUSTERED ( [SessionId] ),
    CONSTRAINT FK_Sessions_Logins FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[Logins]( [LoginId] )
  )