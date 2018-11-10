    CREATE VIEW [dbo].[DoctorsView]
	AS SELECT UserId, FirstName, LastName 
	FROM [UsersData]
	WHERE UserId IN (SELECT [Id] FROM [UsersLogin] WHERE [RoleId] = 2)
