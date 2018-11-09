CREATE TABLE [dbo].[Diseases]
(
	[DiseaseId] INT NOT NULL IDENTITY(1, 1),
	[Name] NCHAR(100) NOT NULL,
	[CategoryId] INT NOT NULL,
	[Description] NVARCHAR(MAX) NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_Diseases PRIMARY KEY CLUSTERED ( [DiseaseId] ),
	CONSTRAINT FK_Diseases_DiseaseCategories FOREIGN KEY ( [CategoryId] ) REFERENCES [dbo].[DiseaseCategories] ( [CategoryId] ),
	CONSTRAINT UC_DiseaseName UNIQUE ( [Name] )
)