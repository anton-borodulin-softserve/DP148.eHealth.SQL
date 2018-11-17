CREATE TABLE [dbo].[PatientAllergies] 
(
    [Id] INT NOT NULL IDENTITY, 
    [PatientId] INT NOT NULL, 
    [AllergyId] INT NOT NULL, 
    [Duration] NVARCHAR(25) NULL, 
    [Notes] NVARCHAR(500) NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0 

    CONSTRAINT PK_PatientAllergy PRIMARY KEY ( [Id] ),
    CONSTRAINT FK_PatientAllergy_Allergies FOREIGN KEY ( [AllergyId] ) REFERENCES Allergies( [Id] ),
    CONSTRAINT FK_PatientAllergy_Patient FOREIGN KEY ( [PatientId] ) REFERENCES PatientInfo( [Id] ),
    CONSTRAINT UC_PatientAllergy UNIQUE ( [PatientId], [AllergyId] )
)