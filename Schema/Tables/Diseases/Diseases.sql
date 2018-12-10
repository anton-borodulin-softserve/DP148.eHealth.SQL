CREATE TABLE [dbo].[Diseases]
(
	[Id] INT NOT NULL IDENTITY(1, 1),
	[Name] NVARCHAR(100) NOT NULL,
	[CategoryId] INT NOT NULL,
	[Description] NVARCHAR(MAX) NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_Diseases PRIMARY KEY CLUSTERED ( [Id] ),
	CONSTRAINT FK_Diseases_DiseaseCategories FOREIGN KEY ( [CategoryId] ) REFERENCES [dbo].[DiseaseCategories] ( [Id] ),
	CONSTRAINT UC_DiseaseName UNIQUE ( [Name] )
)