CREATE TABLE [dbo].[PatientBills]
(
	[Id] INT NOT NULL IDENTITY(1, 1),
	[PatientId] INT NOT NULL,
	[BillId] INT NOT NULL,

	CONSTRAINT PK_PatientBills PRIMARY KEY CLUSTERED ( [Id] ),
	CONSTRAINT FK_PatientBills_PatientInfo FOREIGN KEY ( [PatientId] ) REFERENCES PatientInfo( [Id] ),
	CONSTRAINT FK_PatientBills_Bills FOREIGN KEY ( [BillId] ) REFERENCES Bills( [Id] ),
	CONSTRAINT UC_PatientBills UNIQUE ( [PatientId], [BillId] )
)