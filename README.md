# Healthcare_Patient_Analytics

An end-to-end data analytics project using **Microsoft Excel, Python, SQL Server, and Power BI** to analyze patient, hospital department performance, billing patterns, and length of stay.

## 1. Project Overview

This project focuses on transforming healthcare data into meaningful business insights. The workflow covers data quality assessment, data cleaning, exploratory data analysis, SQL-based analysis, and Power BI.

## 2. Project Objectives

* Assess and improve dataset quality.
* Identify inconsistent dates, duplicate values, and potential data anomalies.
* Perform exploratory data analysis using Python.
* Analyze patient and revenue metrics using SQL Server.
* Develop calculated columns and measures in Power BI.
* Build an interactive dashboard for patient, operational, and financial analysis.
* Communicate findings through clear visualizations and business recommendations.

## 3. Dataset Description

The dataset contains patient-level information, including:

* Patient ID
* Age and gender
* Department
* Diagnosis and treatment
* Admission date and discharge date
* Patient status
* Bill amount

## 4. Python Analysis

Python was used for:

* Dataset inspection using `head()`, `info()`, `describe()`, and `nunique()`.
* Missing-value and duplicate analysis.
* Date conversion and Length of Stay calculation.
* Age-group creation.
* Department-wise patient and revenue aggregation using `groupby()` and `agg()`.
* Descriptive statistics, including mean, median, and standard deviation.
* Correlation analysis between Length of Stay and bill amount.
* Visual exploration of distributions and relationships.

## 5. SQL Server Analysis

SQL Server was used to perform structured data analysis, including:

* Patient counts and distinct patient IDs.
* Department-wise patient volume.
* Revenue and average billing analysis.
* Patient status distribution.
* Diagnosis and treatment analysis.
* Date validation and Length of Stay calculations.
* Conditional logic using `CASE WHEN`.
* Grouped analysis using `GROUP BY` and `HAVING`.
* Advanced analysis using CTEs and window functions, where applicable.

## 6. Power BI 

The dashboard presents healthcare data through interactive reports.

### Executive Overview

* Total patients
* Total revenue
* Average bill amount
* Average Length of Stay
* Patient distribution by department and status

### Patient Analytics

* Age-group distribution
* Gender distribution
* Diagnosis and treatment patterns
* Patient status analysis

### Revenue Analytics

* Total revenue by department
* Revenue distribution by diagnosis
* Average billing amount
* Billing patterns and trends

## 7. Project Structure
Healthcare-Patient-Analytics/
├── data/
├── excel/
├── python/
├── sql/
├── powerbi/
├── screenshots/
└── README.md

## 8. Skills Demonstrated

* Data Cleaning and Data Quality Assessment
* Excel Data Validation
* Python and Pandas
* SQL Querying and Aggregation
* Statistical Analysis
* Data Visualization
* Power BI and DAX

## 15. Conclusion

This project shows an end-to-end analytical workflow, from raw data inspection to interactive reporting. It combines data preparation, database querying, visualization, and business interpretation to develop a structured healthcare analytics solution.

**Tools:** Excel | Python | SQL Server | Power BI | Pandas | NumPy | Matplotlib | Seaborn

**Author:** Saurabh

