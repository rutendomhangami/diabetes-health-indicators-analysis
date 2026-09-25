-- Diabetes Health Indicators SQL Analysis
-- Database: diabetes_project
-- Table: diabetes_cleaned

-- Count the number of cleaned records
SELECT COUNT(*) AS total_records
FROM diabetes_cleaned;


-- Compare health indicators by diabetes status
-- 0 = No diabetes
-- 1 = Prediabetes or diabetes

SELECT
    Diabetes_binary,
    COUNT(*) AS number_of_respondents,
    ROUND(AVG(BMI), 2) AS average_bmi,
    ROUND(AVG(Smoker) * 100, 1) AS smoking_percent,
    ROUND(AVG(PhysActivity) * 100, 1) AS physical_activity_percent,
    ROUND(AVG(HighBP) * 100, 1) AS high_blood_pressure_percent,
    ROUND(AVG(GenHlth), 2) AS average_general_health,
    ROUND(AVG(Age), 2) AS average_age_category
FROM diabetes_cleaned
GROUP BY Diabetes_binary
ORDER BY Diabetes_binary;