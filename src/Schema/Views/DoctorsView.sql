    CREATE VIEW [dbo].[DoctorsView]
    AS SELECT UserId, FirstName, LastName
    FROM [UsersData]
    WHERE UserId IN (SELECT [LoginId] FROM [Logins] WHERE [RoleId] = 2)