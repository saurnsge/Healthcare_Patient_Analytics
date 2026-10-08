
--Total Records

SELECT COUNT(*) AS Total_Records
FROM healthcare_data;

--Unique Patient

SELECT COUNT(DISTINCT patient_id) AS UniquePatient
FROM healthcare_data;

--Distinct Department

SELECT DISTINCT department
FROM healthcare_data;

--Distinct Diagnosis

SELECT DISTINCT diagnosis
FROM healthcare_data;

--Patient by Department

SELECT department,COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY department
ORDER BY Patient_Count DESC

--Revenue by Department

SELECT department,ROUND(SUM(bill_amount),2) AS total_revenue
FROM healthcare_data
GROUP BY department
ORDER BY total_revenue DESC

--Patient Count by Status

SELECT status,COUNT(*) AS Patient_count
FROM healthcare_data
GROUP BY status
ORDER BY Patient_count DESC

--Patient count according to age group

SELECT
	CASE
		WHEN age<=18 THEN '0-18'
		WHEN age<=30 THEN '16-30'
		WHEN age<=45 THEN '31-45'
		WHEN age<=60 THEN '46-60'
		ELSE '61+'
	END AS age_group,
	COUNT(*) AS Patient_count
	FROM healthcare_data
	GROUP BY
		CASE
		WHEN age<=18 THEN '0-18'
		WHEN age<=30 THEN '16-30'
		WHEN age<=45 THEN '31-45'
		WHEN age<=60 THEN '46-60'
		ELSE '61+'
	END
	ORDER BY age_group;

--We found invalid date in admission_date and discharge date
select Count(*) as invalid_date
from healthcare_data
where discharge_date<admission_date

--Check with other column data
SELECT
    patient_id,
    admission_date,
    discharge_date,
    status
FROM healthcare_data
WHERE discharge_date < admission_date;

--I Found all column data is correct, may be admission_date exchange with discharge_date so we get invalid dates
--I will swap admission date with discharge_date where discharge_date<admission_date
--Before exchange we create a back table
select *
into healthcare_data_backup
from healthcare_data;
--Check where backup table is created or not with same number of rows
select count(*) from healthcare_data_backup;
select count(*) from healthcare_data;
--We exchange it under Transaction
BEGIN TRANSACTION;
UPDATE healthcare_data
SET
	admission_date = discharge_date,
	discharge_date=admission_date
WHERE
	discharge_date<admission_date;

--Now check again invalid dates in updated table
select Count(*) as invalid_date
from healthcare_data
where discharge_date<admission_date
COMMIT TRANSACTION;

--Length of Stay
SELECT 
	patient_id,
	admission_date,
	discharge_date,
	DATEDIFF(
		DAY,
		admission_date,
		discharge_date
		) AS lenght_of_stay
	FROM healthcare_data;

	--an advanced SQL query to analyze departmental performance. First, we establish a Common Table Expression 
	--or CTE called DepartmentRevenue to calculate the total billings grouped by each specific department. 
	--Then, in the main select statement, we apply a Window Function using RANK() OVER.

	WITH DepartmentRevenue AS
	(
		Select
			department,
			ROUND(SUM(bill_amount),2) AS Revenue
			FROM healthcare_data
			GROUP BY department
	)
	SELECT
		department,
		Revenue,
		RANK() OVER(
			ORDER BY Revenue
		) AS Revenue_Rank
		FROM DepartmentRevenue;

