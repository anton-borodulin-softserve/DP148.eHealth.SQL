CREATE TABLE [dbo].[Sessions] 
  ( 
     [UserId]      INT NOT NULL , 
     [Token]       VARCHAR(255) NOT NULL, 
     [ExpiredDate] DATETIME NOT NULL 

     CONSTRAINT PK_UserSessions PRIMARY KEY CLUSTERED ( [UserId] ) 
  ) 