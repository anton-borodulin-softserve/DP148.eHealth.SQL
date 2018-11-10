CREATE TABLE [dbo].[UsersLogin]
(
    [Id] INT NOT NULL IDENTITY(1, 1),
    [Login] VARCHAR(100) NOT NULL,
    [RoleId] INT NOT NULL,

    CONSTRAINT PK_UserLogin PRIMARY KEY CLUSTERED ( [Id] ),
    CONSTRAINT FK_UsersLogin_Roles FOREIGN KEY ( [RoleId] ) REFERENCES [dbo].[Roles]( [RoleId] )
)
