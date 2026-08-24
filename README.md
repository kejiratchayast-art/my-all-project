# E-Commerce Data Engineering 

A collection of data engineering projects focused on building
end-to-end data pipelines, data warehouses, analytics layers,
and business-ready datasets.

---

## Projects

### 1. Automated E-Commerce ETL Pipeline

An automated end-to-end ETL pipeline built with Python and Snowflake
to process and validate e-commerce sales data.

#### Pipeline Architecture

```text
Raw CSV
   ↓
Extract
   ↓
Transform
   ↓
Validate
   ↓
Load to Snowflake
```

#### Tech Stack

- Python
- Pandas
- Snowflake
- SQL
- Git / GitHub

#### Key Features

- Automated ETL workflow
- Data extraction from CSV files
- Data transformation and cleaning
- Data quality validation
- Snowflake data loading
- Pipeline failure handling
- End-to-end execution with one command

#### ETL Process

**Extract**

Reads raw e-commerce sales data from CSV files.

**Transform**

Cleans and transforms the raw dataset into analysis-ready data.

**Validate**

Checks data quality including duplicate records,
invalid quantities, and invalid prices.

**Load**

Loads validated data into Snowflake.

**Automation**

Uses `run_pipeline.py` to execute the complete ETL workflow automatically.

#### Validation Result

The pipeline was tested successfully from extraction through Snowflake loading.

```text
Connected to Snowflake!
Load completed: 5 rows
Connection closed.

VALIDATION: PASS

Pipeline completed successfully!
```

#### Project Structure

```text
ecommerce-data-pipeline/
│
├── data/
│   ├── sales.csv
│   └── clean_sales.csv
│
├── sql/
│   ├── 01_analytics_layer.sql
│   ├── 02_dashboard_data.sql
│   ├── 03_verify_analytics.sql
│   └── 04_verify_dashboard.sql
│
├── src/
│   ├── extract.py
│   ├── transform.py
│   ├── validate.py
│   ├── load.py
│   └── run_pipeline.py
│
├── README.md
└── requirements.txt
```

---

### 2. E-Commerce Data Warehouse

A SQL-based e-commerce data warehouse project covering
data modeling, data transformation, analytics, and
business intelligence.

#### Tech Stack

- SQL
- Snowflake
- Data Warehouse
- Power BI

#### Analytics

- Customer order analysis
- Revenue analysis
- Product category analysis
- Business dashboard
- Analysis-ready datasets

#### Skills Demonstrated

- ETL / ELT Pipelines
- Data Warehousing
- SQL
- Python
- Snowflake
- Data Quality Validation
- Data Transformation
- Analytics
- Business Intelligence
- Git / GitHub
