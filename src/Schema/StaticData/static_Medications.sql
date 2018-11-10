--Insert static data in Medications table.

IF ( NOT EXISTS(SELECT *
                FROM   [dbo].[Medications]) )
BEGIN
    INSERT INTO [dbo].[Medications]
        (
            [Name]     ,
            [LatinName],
            [Type]     ,
            [Dose]     ,
            [Direction],
            [Instruction]
        )
        VALUES
        (
            'Aspirin'                 ,
            'Acidum acetylsalicylicum',
            'Sprey'                   ,
            30                        ,
            'Oral'                    ,
            'Instuction'
        );
END

GO