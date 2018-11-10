CREATE TABLE [dbo].[Secrets]
(
    [UserId]   INT NOT NULL,
    [Password] NVARCHAR(100) NOT NULL

    CONSTRAINT PK_UserSecrets PRIMARY KEY CLUSTERED ( [UserId] ),
    CONSTRAINT FK_Secrets_Login FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[Logins]( [LoginId] )
)