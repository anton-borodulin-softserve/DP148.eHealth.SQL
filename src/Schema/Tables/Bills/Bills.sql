CREATE TABLE [dbo].[Bills]
(
	[BillId] INT NOT NULL IDENTITY(1, 1),
	[InvoiceNumber] UNIQUEIDENTIFIER NOT NULL,
	[Date] DATETIME NOT NULL DEFAULT GETDATE(),
	[Amount] SMALLMONEY NOT NULL,
	[AppointmentId] INT NOT NULL,
	[IsDeleted] BIT NOT NULL DEFAULT 0,

	CONSTRAINT PK_Bills PRIMARY KEY CLUSTERED ( [BillId] ),
	CONSTRAINT FK_Bills_Appointments FOREIGN KEY ( [AppointmentId] ) REFERENCES Appointments( [AppointmentId] ),
	CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ),
	CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 )
)