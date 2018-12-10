/*
 Post-Deployment Script base endpoint.
 This file contains SQL statements that will be appended to the build script.
 Scripts will run according to th order in this file!
*/

:r ..\StaticData\Patient\static_Images.sql
:r ..\StaticData\Patient\static_PatientInfo.sql
:r ..\StaticData\Allergies\static_Allergies.sql
:r ..\StaticData\Allergies\static_Symptoms.sql
:r ..\StaticData\Allergies\static_PatientAllergies.sql
:r ..\StaticData\Allergies\static_AllergySymptoms.sql
:r ..\StaticData\Medications\static_Drugs.sql
:r ..\StaticData\Medications\static_Prescriptions.sql
:r ..\StaticData\Diseases\static_DiseaseCategories.sql
:r ..\StaticData\Diseases\static_Diseases.sql
:r ..\StaticData\Diseases\static_PatientDiseases.sql
:r ..\StaticData\Users\static_Roles.sql
:r ..\StaticData\Users\static_Logins.sql
:r ..\StaticData\Users\static_Secrets.sql
:r ..\StaticData\Users\static_UsersData.sql
:r ..\StaticData\Users\static_Sessions.sql
:r ..\StaticData\Appointments\static_Appointments.sql
:r ..\StaticData\Appointments\static_AppointmentBills.sql