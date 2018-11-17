CREATE TABLE [dbo].[Symptoms] 
(
    [Id] INT NOT NULL IDENTITY, 
    [Naming] NVARCHAR(200) NOT NULL, 
    [IsDeleted] BIT NOT NULL DEFAULT 0
    
    CONSTRAINT PK_Symptoms PRIMARY KEY ( [Id] ), 
    CONSTRAINT UC_Symptoms UNIQUE ( [Naming] )
)
