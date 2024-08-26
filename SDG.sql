DROP DATABASE IF EXISTS Good_Health_Well_Being;

CREATE DATABASE Good_Health_Well_Being;

USE Good_Health_Well_Being;
CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Location VARCHAR(100)
);

CREATE TABLE Health_Records (
    Record_ID INT PRIMARY KEY,
    Patient_ID INT,
    Disease_Type VARCHAR(50),
    Diagnosis_Date DATE,
    Treatment VARCHAR(255),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

CREATE TABLE Lifestyle_Factors (
    Factor_ID INT PRIMARY KEY,
    Patient_ID INT,
    Diet VARCHAR(50),
    Exercise_Frequency VARCHAR(50),
    Smoking_Status VARCHAR(10),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

CREATE TABLE Healthcare_Providers (
    Provider_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Location VARCHAR(100)
);

INSERT INTO Patients (Patient_ID, Name, Age, Gender, Location) VALUES
(1, 'John Doe', 45, 'Male', 'Urban Area A'),
(2, 'Jane Smith', 34, 'Female', 'Urban Area B'),
(3, 'Michael Johnson', 52, 'Male', 'Urban Area C'),
(4, 'Emily Davis', 28, 'Female', 'Urban Area A'),
(5, 'David Lee', 41, 'Male', 'Urban Area B'),
(6, 'Sarah Kim', 39, 'Female', 'Urban Area C'),
(7, 'Tom Wilson', 47, 'Male', 'Urban Area A'),
(8, 'Olivia Taylor', 31, 'Female', 'Urban Area B'),
(9, 'Alex Chen', 25, 'Male', 'Urban Area C'),
(10, 'Sophia Patel', 29, 'Female', 'Urban Area A');

INSERT INTO Health_Records (Record_ID, Patient_ID, Disease_Type, Diagnosis_Date, Treatment) VALUES
(1, 1, 'Diabetes', '2023-01-15', 'Insulin Therapy'),
(2, 2, 'Hypertension', '2023-02-10', 'Medication'),
(3, 3, 'Cardiovascular Disease', '2022-06-20', 'Medication, Surgery'),
(4, 4, 'Diabetes', '2021-09-05', 'Diet, Exercise'),
(5, 5, 'Hypertension', '2020-11-30', 'Medication'),
(6, 6, 'Diabetes', '2019-04-12', 'Insulin Therapy'),
(7, 7, 'Cardiovascular Disease', '2018-08-25', 'Medication, Surgery'),
(8, 8, 'Hypertension', '2017-02-18', 'Medication'),
(9, 9, 'Diabetes', '2016-12-01', 'Diet, Exercise'),
(10, 10, 'Hypertension', '2015-05-28', 'Medication');

INSERT INTO Lifestyle_Factors (Factor_ID, Patient_ID, Diet, Exercise_Frequency, Smoking_Status) VALUES
(1, 1, 'High Sugar', 'Rarely', 'No'),
(2, 2, 'Balanced', 'Weekly', 'Yes'),
(3, 3, 'High Fat', 'Monthly', 'Yes'),
(4, 4, 'Balanced', 'Daily', 'No'),
(5, 5, 'High Sugar', 'Rarely', 'Yes'),
(6, 6, 'Balanced', 'Weekly', 'No'),
(7, 7, 'High Fat', 'Monthly', 'Yes'),
(8, 8, 'Balanced', 'Daily', 'No'),
(9, 9, 'High Sugar', 'Rarely', 'Yes'),
(10, 10, 'Balanced', 'Weekly', 'No');

INSERT INTO Healthcare_Providers (Provider_ID, Name, Type, Location) VALUES
(1, 'City Hospital', 'Hospital', 'Urban Area A'),
(2, 'Health Clinic', 'Clinic', 'Urban Area B'),
(3, 'Regional Medical Center', 'Hospital', 'Urban Area C'),
(4, 'Community Health Clinic', 'Clinic', 'Urban Area A'),
(5, 'General Hospital', 'Hospital', 'Urban Area B');
