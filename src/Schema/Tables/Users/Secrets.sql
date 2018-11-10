CREATE TABLE [dbo].[Secrets]
(
    [SecretId] INT NOT NULL IDENTITY(1, 1),
    [UserId]   INT NOT NULL,
    [Password] NVARCHAR(100) NOT NULL

    CONSTRAINT PK_UserSecrets PRIMARY KEY CLUSTERED ( [SecretId] ),
    CONSTRAINT UC_Secrets_UserId UNIQUE( [UserId] ),
    CONSTRAINT FK_Secrets_Login FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[Logins]( [LoginId] )
)