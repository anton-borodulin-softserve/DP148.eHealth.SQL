--Add the test user data.

IF ( NOT EXISTS(SELECT * 
                FROM [dbo].[UsersData]) )
BEGIN
    INSERT INTO [dbo].[UsersData]
        (
            [Id],
            [FirstName],
            [LastName],
            [BirthDate],
            [PhoneNumber],
            [Country],
            [City],
            [Adress],
            [Gender],
            [Email]
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
            [Id],
            [FirstName],
            [LastName],
            [BirthDate],
            [PhoneNumber],
            [Country],
            [City],
            [Adress],
            [Gender],
            [Email]
        )
        VALUES
        (
            '2',
            'Katerina',
            'Bilik',
             '1997-08-08',
            '380975635612',
            'Ukraine',
            'Dnipro',
            'Dmytra Yavornytskoho Avenue, 23',
            0,
            'kate@gmail.com'
        );
        INSERT INTO [dbo].[UsersData]
        (
            [Id],
            [FirstName],
            [LastName],
            [BirthDate],
            [PhoneNumber],
            [Country],
            [City],
            [Adress],
            [Gender],
            [Email]
        )
        VALUES
        (
            '3',
            'Svetlana',
            'Palamachuk',
             '1989-08-08',
            '380975635777',
            'Ukraine',
            'Kiev',
            'Shevchenko street, 08',
            0,
            'svetpal@gmail.com'
        )
END

GO