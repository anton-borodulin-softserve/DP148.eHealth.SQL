CREATE TABLE [dbo].[AppointmentBills] 
  ( 
     [Id]            INT NOT NULL, 
     [InvoiceNumber] UNIQUEIDENTIFIER NOT NULL DEFAULT ( NEWID() ), 
     [Amount]        SMALLMONEY NOT NULL, 
     [IsCompleted]   BIT NOT NULL DEFAULT 0, 
     [IsDeleted]     BIT NOT NULL DEFAULT 0 

     CONSTRAINT PK_AppointmentBills PRIMARY KEY CLUSTERED ( [Id] ), 
     CONSTRAINT FK_AppointmentBills_Appointments FOREIGN KEY ( [Id] ) REFERENCES [dbo].[Appointments] ( [Id] ), 
     CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ), 
     CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 ) 
  )