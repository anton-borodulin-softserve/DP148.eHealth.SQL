CREATE TABLE [dbo].[AppointmentBills] 
  ( 
     [AppointmentId] INT NOT NULL, 
     [InvoiceNumber] UNIQUEIDENTIFIER NOT NULL DEFAULT ( Newid() ), 
     [Amount]        SMALLMONEY NOT NULL, 
     [IsCompleted]   BIT NOT NULL DEFAULT 0, 
     [IsDeleted]     BIT NOT NULL DEFAULT 0 

     CONSTRAINT pk_appointmentbills PRIMARY KEY CLUSTERED ( [AppointmentId] ), 
     CONSTRAINT fk_appointmentbills_appointments FOREIGN KEY ( [AppointmentId] ) REFERENCES [dbo].[Appointments] ( [AppointmentId] ), 
     CONSTRAINT uc_invoicenumber UNIQUE ( [InvoiceNumber] ), 
     CONSTRAINT chk_amount CHECK ( [Amount] >= 0 ) 
  )