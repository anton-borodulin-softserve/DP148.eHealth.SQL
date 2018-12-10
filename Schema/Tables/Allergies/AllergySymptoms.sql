CREATE TABLE [dbo].[AllergySymptoms] 
(
    [Id] INT NOT NULL IDENTITY, 
    [PatientAllergyId] INT NOT NULL, 
    [SymptomId] INT NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0,
    [CreationDate] DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    [DeletionDate] DATETIME NULL

    CONSTRAINT PK_AllergySymptom PRIMARY KEY ( [Id] ),    
    CONSTRAINT FK_AllergySymptom_PatientAllergy FOREIGN KEY ( [PatientAllergyId] ) REFERENCES [PatientAllergies]( [Id] ), 
    CONSTRAINT FK_AllergySymptom_Symptom FOREIGN KEY ( [SymptomId] ) REFERENCES Symptoms( [Id] ), 
    CONSTRAINT UC_AllergySymptom UNIQUE ( [CreationDate], [DeletionDate] )
)
