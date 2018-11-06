CREATE TABLE [dbo].[UserData]
(
	[UserId] INT NOT NULL IDENTITY(1, 1), 
    [FirstName] VARCHAR(100) NOT NULL, 
    [LastName] VARCHAR(100) NOT NULL, 
    [BirthDate] DATE NOT NULL, 
    [PhoneNumber] VARCHAR(12) NOT NULL, 
    [Country] VARCHAR(50) NULL, 
    [City] VARCHAR(50) NULL, 
    [Adress] VARCHAR(50) NULL, 
    [Sex] TINYINT NOT NULL, 
    [Email] VARCHAR(50) NULL UNIQUE

	CONSTRAINT PK_UserData PRIMARY KEY CLUSTERED ( UserId )
	CONSTRAINT UQ_User UNIQUE(FirstName, LastName, BirthDate) 
)
