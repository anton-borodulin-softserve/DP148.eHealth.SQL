CREATE TABLE [dbo].[Bills]
(
	[Id] INT NOT NULL IDENTITY(1, 1),
	[InvoiceNumber] UNIQUEIDENTIFIER NOT NULL,
	[Date] DATETIME NOT NULL DEFAULT GETDATE(),
	[Amount] SMALLMONEY NOT NULL,
	[AppointmentId] INT NOT NULL,

	CONSTRAINT PK_Bills PRIMARY KEY CLUSTERED ( [Id] ),
	CONSTRAINT FK_Bills_Appointments FOREIGN KEY ( [AppointmentId] ) REFERENCES Appointments( [Id] ),
	CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ),
	CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 )
)