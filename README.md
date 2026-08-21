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