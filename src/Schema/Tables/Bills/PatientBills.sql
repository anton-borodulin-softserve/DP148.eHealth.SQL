CREATE TABLE [dbo].[PatientBills]
(
	[PatientBillId] INT NOT NULL IDENTITY(1, 1),
	[PatientId] INT NOT NULL,
	[BillId] INT NOT NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_PatientBills PRIMARY KEY CLUSTERED ( [PatientBillId] ),
	CONSTRAINT FK_PatientBills_PatientInfo FOREIGN KEY ( [PatientId] ) REFERENCES PatientInfo( [PatientId] ),
	CONSTRAINT FK_PatientBills_Bills FOREIGN KEY ( [BillId] ) REFERENCES Bills( [BillId] ),
	CONSTRAINT UC_PatientBills UNIQUE ( [PatientId], [BillId] )
)