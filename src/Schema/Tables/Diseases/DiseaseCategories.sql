CREATE TABLE [dbo].[DiseaseCategories]
(
	[CategoryId] INT NOT NULL IDENTITY(1, 1),
	[Name] NVARCHAR(100) NOT NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_DiseaseCategories PRIMARY KEY CLUSTERED ( [CategoryId] ),
	CONSTRAINT UC_CategoryName UNIQUE ( [Name] )
)