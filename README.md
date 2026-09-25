Diabetes Health Indicators Analysis



## Project Overview



The goal of this project was to analyze health and lifestyle factors associated with diabetes. I used Python to clean and explore the dataset, MySQL to store and query the cleaned data, and Matplotlib to create visualizations.



The analysis compares factors such as BMI, smoking, physical activity, general health, age, and high blood pressure between respondents with and without diabetes.



## Dataset



The project uses the Diabetes Health Indicators dataset, which contains 70,692 records and 22 variables.



The target variable is `Diabetes\_binary`, where:



* `0` represents no diabetes

* `1` represents prediabetes or diabetes



The dataset includes health and lifestyle indicators such as BMI, smoking, physical activity, high blood pressure, cholesterol, general health, age, education, and income.



## Project Process



### 1. Extract



I imported the original CSV dataset into a pandas DataFrame in Jupyter Notebook.



### 2. Transform



I checked the structure and quality of the data by:



* Checking the number of rows and columns

* Checking for missing values

* Identifying duplicate records

* Removing duplicate records

* Saving the cleaned data as a new CSV file



After removing duplicates, the cleaned dataset contained 69,057 records.



### 3. Load and Analyze



I loaded the cleaned dataset into a MySQL database using XAMPP and phpMyAdmin.



I then used SQL queries to:



* Confirm the number of records in the cleaned table

* Group respondents by diabetes status

* Calculate the average BMI for each group

* Compare smoking rates

* Compare physical activity rates

* Compare high blood pressure rates

* Compare general health and age categories



### 4. Visualize



I used Matplotlib to create charts comparing the selected health indicators between the two diabetes-status groups.



## Tools Used



* Python

* pandas

* Matplotlib

* Jupyter Notebook

* SQL

* MySQL

* phpMyAdmin

* XAMPP



## Main Findings



The analysis produced the following results:



| Health indicator         | No diabetes | Prediabetes or diabetes |

| ------------------------ | ----------: | ----------------------: |

| Number of respondents    |      33,960 |                  35,097 |

| Average BMI              |       27.88 |                   31.96 |

| Smoking rate             |       44.3% |                   51.9% |

| Physical activity rate   |       76.7% |                   62.9% |

| High blood pressure rate |       38.4% |                   75.2% |



The results showed that respondents in the prediabetes-or-diabetes group had a higher average BMI and a much higher rate of high blood pressure. Smoking was also more common in this group, while physical activity was lower.



The group also had a higher average age category and reported poorer general health.



These findings show associations within the dataset and should not be interpreted as proof that one factor directly causes diabetes.



## Project Files



* `Diabetes\_Project\_ETL.ipynb` — contains the Python data cleaning, analysis, and visualizations

* `diabetes\_analysis\_queries.sql` — contains the MySQL queries used to analyze the cleaned data

* `diabetes\_binary\_5050split\_health\_indicators\_BRFSS2015.csv` — original dataset used in the project

* `README.md` — provides an overview of the project



## How to Run the Project



1\. Download or clone the repository.

2\. Keep the notebook and CSV dataset in the same folder.

3\. Install pandas and Matplotlib if they are not already installed.

4\. Open `Diabetes\_Project\_ETL.ipynb` in Jupyter Notebook.

5\. Run the notebook cells from top to bottom.

6\. To run the SQL analysis, import the cleaned CSV file into MySQL and execute the queries in `diabetes\_analysis\_queries.sql`.



## Data Source



The dataset is available through the UCI Machine Learning Repository:



https://archive.ics.uci.edu/dataset/891/cdc+diabetes+health+indicators



The underlying health information comes from the CDC Behavioral Risk Factor Surveillance System.



