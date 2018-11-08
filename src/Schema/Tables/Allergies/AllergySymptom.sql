CREATE TABLE [dbo].[AllergySymptom] 
(
    [AllergySymptomId] INT NOT NULL IDENTITY, 
    [PatientAllergyId] INT NOT NULL, 
    [SymptomId] INT NOT NULL, 
    [IsDeleted] BIT NOT NULL, 

    CONSTRAINT PK_AllergySymptom PRIMARY KEY ( [AllergySymptomId] ), 
    CONSTRAINT FK_AllergySymptom_PatientAllergy FOREIGN KEY ( [PatientAllergyId] ) REFERENCES PatientAllergy( [PatientAllergyId] ), 
    CONSTRAINT FK_AllergySymptom_Symptom FOREIGN KEY ( [SymptomId] ) REFERENCES Symptoms( [Id] ), 
    CONSTRAINT UC_AllergySymptom UNIQUE ( [PatientAllergyId], [SymptomId] ), 
)