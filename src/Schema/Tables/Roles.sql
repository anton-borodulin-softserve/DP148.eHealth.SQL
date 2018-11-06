CREATE TABLE [dbo].[Roles]
(
    [RoleId] INT NOT NULL IDENTITY(1, 1),
    [Title] VARCHAR(100) NOT NULL,

    CONSTRAINT PK_Roles PRIMARY KEY CLUSTERED ( [RoleId] ),
    CONSTRAINT FK_Roles_UsersLogin FOREIGN KEY ( [RoleId] ) REFERENCES dbo.UsersLogin( [Id] )
)