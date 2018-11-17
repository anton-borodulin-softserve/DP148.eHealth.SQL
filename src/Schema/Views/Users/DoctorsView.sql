    CREATE VIEW [dbo].[DoctorsView]
    AS SELECT [Id], FirstName, LastName
    FROM [UsersData]
    WHERE [Id] IN (SELECT [Id] FROM [Logins] WHERE [RoleId] = 2)