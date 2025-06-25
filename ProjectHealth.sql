-- Choose the database to work with
use project;

-- Check the secure_file_priv variable for LOAD DATA INFILE permissions
SHOW VARIABLES LIKE 'secure_file_priv';

-- Create patient information table
CREATE TABLE patient_info (
  PatientID INT PRIMARY KEY,
  Name VARCHAR(50),
  Age INT,
  Gender VARCHAR(10),
  Blood_Type VARCHAR(5),
  Medical_Condition VARCHAR(55),
  Doctor VARCHAR(50),
  Hospital VARCHAR(50),
  Insurance_Provider VARCHAR(50)
);

-- Create hospital visit details table
CREATE TABLE hospital_visit (
    PatientID INT,
  Date_of_Admission DATE,
  Discharge_Date DATE,
  Admission_Type VARCHAR(50),
  Room_Number VARCHAR(10),
  Test_Results VARCHAR(50),
  Medication VARCHAR(50),
  Billing_Amount float);

#load data infile

-- Load data into hospital_visit table from CSV
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/hospital_visit.csv'
INTO TABLE hospital_visit
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Load data into patient_info table from CSV
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/patient_info.csv'
INTO TABLE patient_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Verify data in patient_info table
select * from patient_info

-- Verify data in hospital_visit table
select * from hospital_visit

-- Joining the two tables for combined analysis
SELECT 
  pi.Name,
  pi.Age,
  pi.Gender,
  pi.Blood_Type,
  pi.Medical_Condition,
  pi.Insurance_Provider,
  hv.Date_of_Admission,
  hv.Discharge_Date,
  hv.Admission_Type,
  hv.Room_Number,
  hv.Medication,
  hv.Test_Results,
  hv.Billing_Amount
FROM 
  patient_info pi
JOIN 
  hospital_visit hv ON pi.PatientID = hv.PatientID;

-- Example of creating calculated fields directly in SQL for Tableau
SELECT
    pi.Name,
    pi.Age,
    -- ... other columns ...
    DATEDIFF('day', hv.Date_of_Admission, hv.Discharge_Date) AS Length_of_Stay,
    CASE
        WHEN pi.Age BETWEEN 0 AND 18 THEN '0-18'
        WHEN pi.Age BETWEEN 19 AND 35 THEN '19-35'
        WHEN pi.Age BETWEEN 36 AND 55 THEN '36-55'
        ELSE '56+' -- Or adjust ranges as needed
    END AS Age_Group
FROM
    patient_info pi
JOIN
    hospital_visit hv ON pi.PatientID = hv.PatientID;

