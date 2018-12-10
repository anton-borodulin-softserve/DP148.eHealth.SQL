CREATE TABLE [dbo].[PatientDiseases]
(
	[Id] INT NOT NULL IDENTITY(1, 1),
	[PatientId] INT NOT NULL,
	[DiseaseId] INT NOT NULL,
	[UserId] INT NOT NULL,
	[StartDate] DATE NOT NULL DEFAULT GETDATE(),
	[EndDate] DATE NULL,
	[Note] NVARCHAR(MAX) NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_PatientDiseases PRIMARY KEY CLUSTERED ( [Id] ),
	CONSTRAINT FK_PatientDiseases_PatientInfo FOREIGN KEY ( [PatientId] ) REFERENCES [dbo].[PatientInfo]( [Id] ),
	CONSTRAINT FK_PatientDiseases_Diseases FOREIGN KEY ( [DiseaseId] ) REFERENCES [dbo].[Diseases]( [Id] ),
	CONSTRAINT UC_PatientDisease UNIQUE ( [PatientId], [DiseaseId], [StartDate] ),
	CONSTRAINT CHK_DiseaseEndDate CHECK ( ( [EndDate] >= [StartDate] ) OR ( [EndDate] IS NULL ) )
)