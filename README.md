<<<<<<< HEAD
# E-commerce Data Pipeline

An end-to-end data pipeline built with Python, SQL, and Snowflake to transform raw e-commerce sales data into analytics-ready and dashboard-ready datasets.

## Architecture

```text
CSV
 ↓
Extract
 ↓
Transform
 ↓
Snowflake RAW
 ↓
Data Quality
 ↓
Analytics
 ↓
Dashboard
 ↓
Verification
```

## Tech Stack

- Python
- Pandas
- SQL
- Snowflake
- Git / GitHub

## Project Structure

```text
ecommerce-data-pipeline/
│
├── data/
│   ├── sales.csv
│   └── clean_sales.csv
│
├── src/
│   ├── extract.py
│   ├── transform.py
│   └── load.py
│
├── sql/
│   ├── 01_analytics_layer.sql
│   ├── 02_dashboard_data.sql
│   ├── 03_verify_analytics.sql
│   ├── 04_verify_dashboard_data.sql
│   └── 05_data_quality.sql
│
├── README.md
└── requirements.txt
```

## Pipeline Process

### 1. Extract

Load raw e-commerce sales data from CSV using Python.

### 2. Transform

Clean and prepare the data for loading into Snowflake.

### 3. Load

Load the processed data into the Snowflake RAW layer.

### 4. Data Quality

Validate data quality by checking:

- NULL values
- Duplicate records
- Invalid quantities
- Invalid prices
- Calculation accuracy

### 5. Analytics & Dashboard

Create aggregated analytics tables and dashboard-ready datasets.

## Snowflake Data Layers

```text
RAW
 ↓
ANALYTICS
 ↓
DASHBOARD
```

### RAW Layer

Stores the loaded sales data from the source CSV.

### ANALYTICS Layer

Contains aggregated datasets for:

- Customer Analytics
- Product Analytics
- Sales Summary

### DASHBOARD Layer

Contains dashboard-ready datasets for:

- Customer analysis
- Product analysis
- Sales analysis

## Data Quality Results

| Data Quality Check | Result |
|---|---:|
| NULL values | Passed |
| Invalid quantity | Passed |
| Invalid price | Passed |
| Calculation accuracy | Passed |
| Duplicate order-product records | 5 detected |

Duplicate order-product records were detected during data-quality validation.

## Analytics Results

| Metric | Result |
|---|---:|
| Total Orders | 5 |
| Total Quantity | 6 |
| Total Revenue | 79,700 |
| Average Order Value | 15,940 |

## Key Insights

- Laptop generated the highest revenue.
- Alice had the highest customer spending.
- Duplicate order-product records were detected.
- NULL, quantity, price, and calculation checks passed.

## Future Improvements

- Add automated data-quality monitoring
- Add incremental data loading
- Schedule the pipeline with Apache Airflow
- Add automated testing
- Connect the dashboard layer to Power BI
- Add CI/CD

## Author

**Jiratchaya Keawdee**

Data Science & AI Student
=======
# My All Project
Welcome to my project portfolio.

This repository contains my academic projects, data science projects,
data engineering projects, cybersecurity projects, and other technical work.

## Projects

### 1. E-commerce Data Warehouse
A data engineering project using Snowflake and SQL.

- Database and schema setup
- Raw data ingestion
- Data transformation
- Customer and order analysis
- Revenue analysis
- Product and category analysis
- Business dashboard queries

### 2. Cybersecurity – OWASP ZAP
A cybersecurity project exploring web application security testing
using OWASP ZAP.

### 3. Eazy Car
A business and technology project focusing on an AI-powered
B2B lead generation solution for a car subscription service.

## Skills

- SQL
- Python
- Data Engineering
- Data Science
- Snowflake
- Power BI
- Excel
- Machine Learning
- Cybersecurity
.
>>>>>>> 235f9786bc928d99beecee3af72c23ea915c3dd6
