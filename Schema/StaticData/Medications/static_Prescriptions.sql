--Insert static data in Prescriptions table.

IF ( NOT EXISTS(SELECT *
                FROM [dbo].[Prescriptions]) )

BEGIN
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(1, 2, 2, 5);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(2, 6, 2, 7);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(2, 6, 9, 14);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(3, 2, 3, 30);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(4, 2, 1, 7);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(4, 2, 5, 14);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(5, 2, 10, 3);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(6, 2, 4, 2);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(7, 2, 4, 3);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(7, 2, 3, 14);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(8, 2, 7, 4);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(9, 2, 7, 1);
    INSERT INTO [dbo].[Prescriptions]([PatientId], [UserId] , [DrugId], [Duration])
    VALUES(10, 2, 9, 7);
END

GO