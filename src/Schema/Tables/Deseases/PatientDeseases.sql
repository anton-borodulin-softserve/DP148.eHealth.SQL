CREATE TABLE [dbo].[PatientDiseases]
(
	[PatientDiseaseId] INT NOT NULL IDENTITY(1, 1),
	[PatientId] INT NOT NULL,
	[DiseaseId] INT NOT NULL,
	[UserId] INT NOT NULL,
	[StartDate] DATE NOT NULL DEFAULT GETDATE(),
	[EndDate] DATE NULL,
	[Note] NVARCHAR(MAX) NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_PatientDiseases PRIMARY KEY CLUSTERED ( [PatientDiseaseId] ),
	CONSTRAINT FK_PatientDiseases_PatientInfo FOREIGN KEY ( [PatientId] ) REFERENCES [dbo].[PatientInfo]( [PatientId] ),
	CONSTRAINT FK_PatientDiseases_Diseases FOREIGN KEY ( [DiseaseId] ) REFERENCES [dbo].[Diseases]( [DiseaseId] ),
	CONSTRAINT UC_PatientDisease UNIQUE ( [PatientId], [DiseaseId], [StartDate] ),
	CONSTRAINT CHK_DiseaseEndDate CHECK ( ( [EndDate] >= [StartDate] ) OR ( [EndDate] IS NULL ) )
)