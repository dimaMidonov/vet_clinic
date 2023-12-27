CREATE TABLE Owners (
  ID INT PRIMARY KEY,
  Owner_FirstName VARCHAR(255),
  Owner_LastName VARCHAR(255),
  Contact_PhoneNumber VARCHAR(255),
  Email_Address VARCHAR(255),
  Home_Address VARCHAR(255)
);

CREATE TABLE Patients (
  ID INT PRIMARY KEY,
  Patient_FirstName VARCHAR(255),
  Patient_Type VARCHAR(255),
  Breed VARCHAR(255),
  Date_of_Birth DATE,
  Owner_ID INT,
  FOREIGN KEY (Owner_ID) REFERENCES Owners(ID)
  Servis_ID INT,
  FOREGIN KEY (Servis_ID) REFERENCES Servis(ID)
);

CREATE TABLE Visits (
  ID INT PRIMARY KEY,
  Patient_ID INT,
  FOREIGN KEY (Patient_ID) REFERENCES Patients(ID),
  Visit_Date DATE,
  Visit_Time TIME,
  Problem_Description VARCHAR(255),
  Diagnosis VARCHAR(255),
  Treatment_Prescription VARCHAR(255)
);

CREATE TABLE Doctors (
  ID INT PRIMARY KEY,
  Doctor_FirstName VARCHAR(255),
  Specialization VARCHAR(255),
  Contact_PhoneNumber VARCHAR(255),
  Email_Address VARCHAR(255)
);

CREATE TABLE Schedule (
  ID INT PRIMARY KEY,
  Doctor_ID INT,
  FOREIGN KEY (Doctor_ID) REFERENCES Doctors(ID),
  Day_of_Week VARCHAR(255),
  Start_Time TIME,
  End_Time TIME
);

CREATE TABLE Procedures (
  ID INT PRIMARY KEY,
  Procedure_Name VARCHAR(255),
  Procedure_Description VARCHAR(255),
  Procedure_Cost DECIMAL(10, 2)
);

CREATE TABLE Medications (
  ID INT PRIMARY KEY,
  Medication_Name VARCHAR(255),
  Medication_Description VARCHAR(255),
  Medication_Cost DECIMAL(10, 2)
);

CREATE TABLE Treatment_History (
  ID INT PRIMARY KEY,
  Patient_ID INT,
  FOREIGN KEY (Patient_ID) REFERENCES Patients(ID),
  Doctor_ID INT,
  FOREIGN KEY (Doctor_ID) REFERENCES Doctors(ID),
  Start_Date DATE,
  End_Date DATE,
  Notes VARCHAR(255)
);

CREATE TABLE Payments (
  ID INT PRIMARY KEY,
  Patient_ID INT,
  FOREIGN KEY (Patient_ID) REFERENCES Patients(ID),
  Payment_Date DATE,
  Payment_Amount DECIMAL(10, 2),
);

CREATE TABLE Services (
  ID INT PRIMARY KEY,
  Service_Name VARCHAR(255),
  Service_Description VARCHAR(255),
  Service_Cost DECIMAL(10, 2)
);