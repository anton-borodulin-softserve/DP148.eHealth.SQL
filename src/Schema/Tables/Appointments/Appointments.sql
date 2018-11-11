CREATE TABLE [dbo].[Appointments] 
  ( 
     [AppointmentId]   INT NOT NULL IDENTITY(1, 1), 
     [PatientId]       INT NOT NULL, 
     [UserId]          INT NOT NULL, 
     [AppointmentDateTime] DATE NOT NULL DEFAULT GETDATE(), 
     [Duration]        INT NOT NULL DEFAULT 15, 
     [Purpose]         NVARCHAR(50) NOT NULL DEFAULT ('inspection'), 
     [IsDeleted]       BIT NOT NULL DEFAULT 0 

     CONSTRAINT PK_Appointments PRIMARY KEY CLUSTERED ( [AppointmentId] ), 
     CONSTRAINT FK_Appointments_PatientInfo FOREIGN KEY ( [PatientId] ) REFERENCES [PatientInfo]( [PatientId] ), 
     CONSTRAINT CHK_DURATION CHECK ( [Duration] >= 5 ), 
     CONSTRAINT CHK_PURPOSE CHECK ([Purpose] IN ('inspection', 'procedure')) 
  ) 