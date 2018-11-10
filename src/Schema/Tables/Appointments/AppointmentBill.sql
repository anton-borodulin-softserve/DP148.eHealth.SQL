CREATE TABLE [dbo].[AppointmentBill] 
  ( 
     [AppointmentBillId] INT NOT NULL IDENTITY(1, 1), 
     [InvoiceNumber]     UNIQUEIDENTIFIER NOT NULL, 
     [Amount]            SMALLMONEY NOT NULL,          
     [IsDeleted]         BIT NOT NULL DEFAULT 0 

     CONSTRAINT PK_Bills PRIMARY KEY CLUSTERED ( [AppointmentBillId] ), 
     CONSTRAINT UC_InvoiceNumber UNIQUE ( [InvoiceNumber] ), 
     CONSTRAINT CHK_Amount CHECK ( [Amount] >= 0 ) 
	 )