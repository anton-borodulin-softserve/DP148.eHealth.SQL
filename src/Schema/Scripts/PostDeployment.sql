/* 
 Post-Deployment Script base endpoint.
 This file contains SQL statements that will be appended to the build script.
 Scripts will run according to th order in this file!
*/

:r ..\StaticData\static_Roles.sql
:r ..\StaticData\static_UsersLogin.sql
:r ..\StaticData\static_AppointmentBills.sql
:r ..\StaticData\static_Appointments.sql