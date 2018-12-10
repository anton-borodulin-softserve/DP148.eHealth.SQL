CREATE TABLE [dbo].[Secrets]
(
    [Id]       INT NOT NULL,
    [Password] NVARCHAR(100) NOT NULL

    CONSTRAINT PK_UserSecrets PRIMARY KEY CLUSTERED ( [Id] ),
    CONSTRAINT FK_Secrets_Login FOREIGN KEY ( [Id] ) REFERENCES [dbo].[Logins]( [Id] )
)