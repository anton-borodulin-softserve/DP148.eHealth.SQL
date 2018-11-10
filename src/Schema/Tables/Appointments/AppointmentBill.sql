CREATE TABLE [dbo].[AppointmentBill] 
  ( 
     [AppointmentId]	 INT NOT NULL, 
     [InvoiceNumber]     UNIQUEIDENTIFIER NOT NULL DEFAULT ( NEWID() ), 
     [Amount]            SMALLMONEY NOT NULL,   
	 [Completed]		 BIT NOT NULL DEFAULT 0,
     [IsDeleted]         BIT NOT NULL DEFAULT 0 
	 
	 CONSTRAINT FK_AppointmentBill_Appointment FOREIGN KEY ([AppointmentId]) REFERENCES [Appointments]([AppointmentId]),
     CONSTRAINT PK_Bills PRIMARY KEY CLUSTERED ( [AppointmentId] ), 
     CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ), 
     CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 ), 
    
	 )