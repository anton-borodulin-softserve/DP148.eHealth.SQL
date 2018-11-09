CREATE VIEW [dbo].[DoctorsView] 
AS 
  SELECT USERID, 
         FIRSTNAME, 
         LASTNAME 
  FROM   [dbo].USERSDATA 
  WHERE  USERID = 2; 