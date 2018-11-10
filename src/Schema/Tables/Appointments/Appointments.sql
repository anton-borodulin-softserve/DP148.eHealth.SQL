CREATE TABLE [dbo].[Appointments] 
  ( 
     [AppointmentId]     INT NOT NULL IDENTITY(1, 1), 
     [PatientId]         INT NOT NULL, 
     [UserId]            INT NOT NULL, 
     [AppointmentDate]   DATE NOT NULL DEFAULT Getdate(), 
     [AppointmentTime]   TIME NOT NULL, 
     [Duration]          INT NOT NULL DEFAULT 15, 
     [Purpose]           NVARCHAR(50) NOT NULL DEFAULT ('inspection'), 
     [AppointmentBillId] INT NOT NULL, 

     CONSTRAINT PK_Appointment PRIMARY KEY CLUSTERED ( [AppointmentId] ), 
     CONSTRAINT FK_Appointments_PatientInfo FOREIGN KEY ( [PatientId] ) 
     REFERENCES [PatientInfo]( [PatientId] ), 
     CONSTRAINT FK_Appointments_DoctorView FOREIGN KEY ( [UserId] ) REFERENCES 
     [DoctorView]( [UserId] ), 
     CONSTRAINT FK_Appointments_AppointmentBill FOREIGN KEY ( 
     [AppointmentBillId]) REFERENCES [AppointmentBill]([AppointmentBillId]), 
     CONSTRAINT CHK_DURATION CHECK ( [Duration] >= 5 ), 
     CONSTRAINT CHK_PURPOSE CHECK ([Purpose] IN('inspection', 'procedure')), 
  )