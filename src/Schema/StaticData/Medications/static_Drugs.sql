--Insert static data in Drugs table.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Drugs]) )
BEGIN
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [Direction], [Instruction])
    VALUES ('Septefrilum', 'Pill', 0.2, 'Oral', 'Septefrilum instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [Direction], [Instruction])
    VALUES ('Nise', 'Pill', 100.0, 'Oral', 'Nise instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [DoseUnit], [Direction], [Instruction])
    VALUES ('Quixx', 'Spray', 30, 'ml', 'Nasal', 'Qyixx instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [Direction], [Instruction])
    VALUES ('Coldrex max grip lemon', 'Powder', 1000, 'Oral', 'Coldrex instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [DoseUnit], [Direction], [Instruction])
    VALUES ('Althea root', 'Syrup', 100.0, 'ml', 'Oral', 'Althea root instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [Direction], [Instruction])
    VALUES ('Ceftriaxone', 'Powder', 0.2, 'Oral', 'Ceftriaxone instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [DoseUnit], [Direction], [Instruction])
    VALUES ('Althea root', 'Syrup', 200.0, 'ml', 'Oral', 'Althea root instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [DoseUnit], [Direction], [Instruction])
    VALUES ('Ethanol', 'Solute', 100.0, 'ml', 'External', 'Ethanol instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [Direction], [Instruction])
    VALUES ('Decatylen', 'Pill', 0.25, 'Oral', 'Decatylen instruction.');
    INSERT INTO [dbo].[Drugs]([Name], [Type], [Dose], [DoseUnit], [Direction], [Instruction])
    VALUES ('Althea root', 'Pill', 0.12, 'g', 'Oral', 'Althea root instruction.');

END

GO