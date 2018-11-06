CREATE TABLE [dbo].[PatientInfo]
(
	[PatientId] INT NOT NULL  IDENTITY(1,1), 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Country] VARCHAR(50) NULL, 
    [City] VARCHAR(50) NULL, 
    [Address] VARCHAR(MAX) NULL, 
    [BirthDate] DATE NOT NULL, 
    [Phone] VARCHAR(13) NULL, 
    [Genre] NCHAR(10) NULL,
	[Email] VARCHAR(50) NULL,
	[ImageId] INT NULL
	CONSTRAINT PK_Patient PRIMARY KEY CLUSTERED ( [PatientId] )
	CONSTRAINT UC_Person UNIQUE(FirstName, LastName, BirthDate)    
	CONSTRAINT FK_Images_Id FOREIGN KEY ( [ImageId] ) REFERENCES dbo.Images( [ImageId] )
    
)
