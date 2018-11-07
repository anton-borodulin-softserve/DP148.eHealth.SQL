CREATE VIEW [dbo].[DoctorView]
	AS SELECT UserId, FirstName, LastName 
	FROM [UserData]
	WHERE UserId IN (SELECT Id FROM UsersLogin WHERE RoleId = 2)
