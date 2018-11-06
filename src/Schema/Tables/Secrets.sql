CREATE TABLE [dbo].[Secrets]
(
	[UserId] INT NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL

	CONSTRAINT PK_UserSecrets PRIMARY KEY CLUSTERED ( UserId )
)
