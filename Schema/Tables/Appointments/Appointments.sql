CREATE TABLE [dbo].[Appointments] 
  ( 
     [Id]              INT NOT NULL IDENTITY(1, 1), 
     [PatientId]       INT NOT NULL, 
     [UserId]          INT NOT NULL, 
     [AppointmentDateTime] DATETIME NOT NULL, 
     [Duration]        INT NOT NULL DEFAULT 15, 
     [Purpose]         NVARCHAR(50) NOT NULL DEFAULT ('inspection'), 
     [IsDeleted]       BIT NOT NULL DEFAULT 0 

     CONSTRAINT PK_Appointments PRIMARY KEY CLUSTERED ( [Id] ), 
     CONSTRAINT FK_Appointments_PatientInfo FOREIGN KEY ( [PatientId] ) REFERENCES [PatientInfo]( [Id] ), 
     CONSTRAINT CHK_Duration CHECK ( [Duration] >= 5 ), 
     CONSTRAINT CHK_Purpose CHECK ([Purpose] IN ('inspection', 'procedure')) 
  ) 