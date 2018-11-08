CREATE TABLE [dbo].[Appointments]
(
	[AppointmentId] INT NOT NULL IDENTITY(1, 1), 
    [PatientId] INT NOT NULL, 
    [UserId] INT NOT NULL, 
    [Data] DATE NOT NULL DEFAULT GETDATA(),
    [Time] TIME NOT NULL,
    [Duration] INT NOT NULL DEFAULT 15,   
	[Purpose] nvarchar(20) NOT NULL CHECK ([Purpose] IN('inspection', 'procedure')) DEFAULT 'inspection',
	[IsDeleted] BIT NOT NULL DEFAULT 0,

    CONSTRAINT PK_Appointments PRIMARY KEY CLUSTERED ( [AppointmentId] ),
	CONSTRAINT FK_Appointments_Patients FOREIGN KEY ( [PatientId] ) REFERENCES PatientInfo( [PatientId] ),
	CONSTRAINT FK_Appointments_Users FOREIGN KEY ( [UserId] ) REFERENCES Users( [UserId] ),
	CONSTRAINT CHK_Duration CHECK ( [Duration] >= 5 )
)
