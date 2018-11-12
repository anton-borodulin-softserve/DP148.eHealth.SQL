CREATE TABLE [dbo].[Allergies] 
(
    [AllergyId] INT NOT NULL IDENTITY, 
    [Pathogen] NVARCHAR(200) NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
    
    CONSTRAINT PK_Allergies PRIMARY KEY ( [AllergyId] ),
    CONSTRAINT UC_Allergies UNIQUE ( [Pathogen] )
)