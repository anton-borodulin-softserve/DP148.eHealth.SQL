CREATE TABLE [dbo].[AppointmentBills] 
  ( 
     [AppointmentId] INT NOT NULL, 
     [InvoiceNumber] UNIQUEIDENTIFIER NOT NULL DEFAULT ( NEWID() ), 
     [Amount]        SMALLMONEY NOT NULL, 
     [IsCompleted]   BIT NOT NULL DEFAULT 0, 
     [IsDeleted]     BIT NOT NULL DEFAULT 0 

     CONSTRAINT PK_AppointmentBills PRIMARY KEY CLUSTERED ( [AppointmentId] ), 
     CONSTRAINT FK_AppointmentBills_Appointments FOREIGN KEY ( [AppointmentId] ) REFERENCES [dbo].[Appointments] ( [AppointmentId] ), 
     CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ), 
     CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 ) 
  )