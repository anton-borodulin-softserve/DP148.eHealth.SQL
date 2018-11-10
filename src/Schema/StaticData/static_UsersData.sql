--Add the test user data.

IF ( NOT EXISTS(SELECT * 
                FROM [dbo].[UsersData]) )
BEGIN
    INSERT INTO [dbo].[UsersData]
        (
            UserId,
            FirstName,
            LastName,
            BirthDate,
            PhoneNumber,
            Country,
            City,
            Adress,
            Gender,
            Email
        )
        VALUES
        (
            '1',
            'Ivan',
            'Ivanov',
             '1997-07-07',
            '380975638912',
            'Ukraine',
            'Dnipro',
            'Dmytra Yavornytskoho Avenue, 22',
            1,
            'ivan@gmail.com'
        );
        INSERT INTO [dbo].[UsersData]
        (
            UserId,
            FirstName,
            LastName,
            BirthDate,
            PhoneNumber,
            Country,
            City,
            Adress,
            Gender,
            Email
        )
        VALUES
        (
            '2',
            'Katerina',
            'Vasiliovna',
             '1997-08-08',
            '380975635612',
            'Ukraine',
            'Dnipro',
            'Dmytra Yavornytskoho Avenue, 23',
            0,
            'kate@gmail.com'
        )
END

GO