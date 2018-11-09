CREATE VIEW [dbo].[DoctorsView] 
AS 
  SELECT UserId, 
         FirstName, 
         LastName 
  FROM   [dbo].USERSDATA 
  WHERE  USERID = 2; 