CREATE TABLE [dbo].[Logins]
(
    [LoginId] INT NOT NULL IDENTITY(1, 1),
    [Login]   VARCHAR(100) NOT NULL,
    [RoleId]  INT NOT NULL,

    CONSTRAINT PK_Logins PRIMARY KEY CLUSTERED ( [LoginId] ),
    CONSTRAINT FK_UsersLogin_Roles FOREIGN KEY ( [RoleId] ) REFERENCES [dbo].[Roles]( [RoleId] )
)