/*
 Post-Deployment Script base endpoint.
 This file contains SQL statements that will be appended to the build script.
 Scripts will run according to th order in this file!
*/

:r ..\StaticData\static_Images.sql
:r ..\StaticData\static_PatientInfo.sql
:r ..\StaticData\static_Allergies.sql
:r ..\StaticData\static_Symptoms.sql
:r ..\StaticData\static_PatientAllergy.sql
:r ..\StaticData\static_AllergySymptom.sql
:r ..\StaticData\static_Medications.sql
:r ..\StaticData\static_PatientMediacations.sql
:r ..\StaticData\static_DiseaseCategories.sql
:r ..\StaticData\static_Diseases.sql
:r ..\StaticData\static_PatientDiseases.sql
:r ..\StaticData\static_Roles.sql
:r ..\StaticData\static_Logins.sql
:r ..\StaticData\static_Secrets.sql
:r ..\StaticData\static_UsersData.sql
:r ..\StaticData\static_Sessions.sql
:r ..\StaticData\static_Appointments.sql
:r ..\StaticData\static_AppointmentsBill.sql




