CREATE TABLE [dbo].[PatientInfo]
(
	[PatientId] INT NOT NULL IDENTITY(1, 1), 
	[FirstName] NVARCHAR(50) NOT NULL, 
	[LastName] NVARCHAR(50) NOT NULL, 
	[Country] NVARCHAR(50) NULL, 
	[City] NVARCHAR(50) NULL, 
	[Address] NVARCHAR(MAX) NULL, 
	[BirthDate] DATE NOT NULL, 
	[Phone] VARCHAR(13) NULL, 
	[Gender] TINYINT NULL,
	[Email] VARCHAR(50) NULL,
	[ImageId] INT NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0

	CONSTRAINT PK_PatientInfo PRIMARY KEY CLUSTERED ( [PatientId] )
	CONSTRAINT UC_Person UNIQUE( [FirstName], [LastName], [BirthDate] )
	CONSTRAINT UC_Email UNIQUE( [Email] )
	CONSTRAINT FK_Images_Id FOREIGN KEY ( [ImageId] ) REFERENCES [dbo].[Images]( [ImageId] )
)
