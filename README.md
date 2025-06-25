# [Hospital Patient Visit Data Analysis]

---

## 📄 Introduction

This project presents a comprehensive analysis of hospital patient visit data, aiming to provide in-depth insights into patient demographics, operational and financial aspects, and medical data and visit outcomes. The interactive dashboards are built using Tableau, while data management and transformation are performed with MySQL.

---

## ✨ Key Features & Dashboards

This project is divided into three main interactive dashboards, each designed to provide specific focus and insights:

1.  **PATIENT OVERVIEW**
    * **Focus:** Provides an overview of patient demographics (age, gender), visit trends over time, and patient distribution by insurance provider.
    * **Insight:** Helps understand the basic characteristics of the patient population and visit patterns.

2.  **OPERATIONAL & FINANCIAL VISIT ANALYSIS**
    * **Focus:** Analyzes the operational (length of stay, room utilization) and financial (billing amount) aspects of each visit, grouped by admission type.
    * **Insight:** Identifies operational efficiency and patient spending patterns.

3.  **MEDICAL & OUTCOME ANALYSIS**
    * **Focus:** Delves into medical data such as prescribed medications, test results, and correlations between admission types and given medications.
    * **Insight:** Provides an understanding of medical practices and their outcomes.

---

## 📊 Interactive Dashboard Visualization

View the interactive dashboard directly on Tableau Public:

**Health Dashboard - Patient Summary[https://bit.ly/HealthDashboardSummary]**

---

## 💾 Data Source

The data used in this project is simulated hospital patient visit data.
* **Data Size:** Approximately ~55,000 rows of patient visit data.
* **Data Origin:** Data is sourced from two separate CSV files that were then imported into MySQL.
* **Key Data Columns:** `PatientID`, `Name`, `Age`, `Gender`, `Date_of_Admission`, `Discharge_Date`, `Hospital`, `Insurance_Provider`, `Admission_Type`, `Room_Number`, `Medication`, `Test_Results`, `Billing_Amount`.

---

## ⚙️ Data Structure & Transformation (MySQL)

A MySQL database is used to store, manage, and perform initial transformations on the data.

* **Database Schema:**
    * `patient_info` table: Contains patient demographic information (`PatientID` (Primary Key), `Name`, `Age`, `Gender`, `Blood_Type`, `Medical_Condition`, `Doctor`, `Hospital`, `Insurance_Provider`).
    * `hospital_visit` table: Contains hospital visit details (`PatientID` (Foreign Key), `Date_of_Admission`, `Discharge_Date`, `Admission_Type`, `Room_Number`, `Test_Results`, `Medication`, `Billing_Amount`).
* **SQL Transformations:**
    * Data is loaded from CSV files into their respective tables (`patient_info.csv` and `hospital_visit.csv`) using the `LOAD DATA INFILE` command.
    * Both tables are joined using a `JOIN` operation on `PatientID`.
    * Calculated columns such as `Length_of_Stay_Days` (duration of stay) and `Age_Group_Category` (age categories) are created directly within the SQL query for easy analysis in Tableau.

You can find the complete SQL scripts for table creation, data loading, and transformation queries in the `database/` and `sql_scripts/` folders within this repository.

---

## 🛠️ Technologies Used

* **Database:** MySQL
* **Data Visualization:** Tableau Desktop & Tableau Public
* **Data Management/Initial:** (Optional, if you used Excel for initial data cleaning) Microsoft Excel
* **Version Control:** Git & GitHub

---

## 🚀 How to Access & Run This Project
### 1. View Dashboard on Tableau Public (Recommended & Easiest)
* Experience the interactive dashboard directly in your web browser by clicking here:
    **Health Dashboard - Patient Summary [https://bit.ly/HealthDashboardSummary]**

### 2. Explore Project Files & Run Locally (For Technical Deep Dive)
If you wish to examine the underlying data, SQL scripts, and Tableau workbook files:

* **Access Files:** You can browse all project files directly on this GitHub repository. To download them, simply click the green **"<> Code"** button on the main repository page and select **"Download ZIP"**.

---

## 📞 Contact

If you have any questions or would like to connect, feel free to reach out:

* **Name:** Mario Sianipar
* **Email:** [mariosianipar001@gmail.com](mailto:mariosianipar001@gmail.com)
* **LinkedIn:** [www.linkedin.com/in/msianipar](www.linkedin.com/in/msianipar)

---
