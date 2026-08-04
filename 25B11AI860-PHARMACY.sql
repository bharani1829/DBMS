CREATE DATABASE Pharmacy;
SHOW DATABASES;
USE Pharmacy;

CREATE TABLE Tablets (
    Tablet_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Tablet_Weight VARCHAR(50),
    Disease VARCHAR(50),
    Symptoms VARCHAR(100)
);

SELECT * FROM Tablets;

INSERT INTO Tablets (Tablet_ID, Name, Tablet_Weight, Disease, Symptoms)
VALUES
(1011, 'Paracetamol', '500 mg', 'Fever', 'High temperature, body pain'),
(1012, 'Amoxicillin', '250 mg', 'Bacterial Infection', 'Sore throat, fever, swelling'),
(1013, 'Metformin', '500 mg', 'Type 2 Diabetes', 'Increased thirst, frequent urination, fatigue'),
(1014, 'Cetirizine', '10 mg', 'Allergy', 'Sneezing, itching, runny nose'),
(1015, 'Amlodipine', '5 mg', 'Hypertension', 'High blood pressure, dizziness'),
(1016, 'Omeprazole', '20 mg', 'Acid Reflux', 'Heartburn, chest discomfort, indigestion'),
(1017, 'Azithromycin', '500 mg', 'Respiratory Infection', 'Cough, fever, sore throat'),
(1018, 'Ibuprofen', '400 mg', 'Pain & Inflammation', 'Muscle pain, joint pain, swelling'),
(1019, 'Atorvastatin', '20 mg', 'High Cholesterol', 'Usually no symptoms, high LDL cholesterol'),
(1020, 'Losartan', '50 mg', 'Hypertension', 'High blood pressure, headache, fatigue');

ALTER TABLE Tablets
RENAME COLUMN Disease TO Used_For_Tablet;

ALTER TABLE Tablets
RENAME COLUMN Symptoms TO Symptoms_Occurs;

SELECT * FROM Tablets;

UPDATE Tablets
SET Used_For_Tablet = 'Body pains and headache'
WHERE Tablet_ID = 1011;

UPDATE Tablets
SET Used_For_Tablet = 'Allergy and body infection'
WHERE Tablet_ID = 1012;

SELECT * FROM Tablets;



SELECT Tablet_Weight, COUNT(*) AS Total_Tablets
FROM Tablets
GROUP BY Tablet_Weight;

SELECT Used_For_Tablet, COUNT(*) AS Total_Tablets
FROM Tablets
GROUP BY Used_For_Tablet;

SELECT Used_For_Tablet, COUNT(*) AS Tablet_Count
FROM Tablets
GROUP BY Used_For_Tablet
HAVING COUNT(*) > 1;

SELECT Tablet_Weight, COUNT(*) AS Num_Tablets, AVG(Tablet_ID) AS Avg_ID
FROM Tablets
GROUP BY Tablet_Weight
HAVING AVG(Tablet_ID) > 1015;

TRUNCATE TABLE Tablets;
DROP TABLE Tablets;