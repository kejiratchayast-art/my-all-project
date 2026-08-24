# E-Commerce Data Engineering 

A collection of data engineering projects focused on building
end-to-end data pipelines, data warehouses, analytics layers,
and business-ready datasets.

---

## Projects

### 1. Automated E-Commerce ETL Pipeline

An automated end-to-end ETL pipeline built with Python and Snowflake
to process, transform, validate, and load e-commerce sales data.

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

The pipeline was successfully tested from extraction
through Snowflake loading.

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
data modeling, data transformation, analytics,
and business intelligence.

#### Tech Stack

- SQL
- Snowflake
- Data Warehouse
- Power BI

#### Data Warehouse Architecture

```text
Snowflake
│
├── RAW
│   └── SALES
│
├── ANALYTICS
│   ├── Customer Analysis
│   ├── Revenue Analysis
│   └── Product Analysis
│
└── DASHBOARD
    └── Business-ready Dataset
```

#### Data Flow

```text
E-Commerce Sales Data
        │
        ▼
     Raw CSV
        │
        ▼
     EXTRACT
  Python / Pandas
        │
        ▼
    TRANSFORM
Cleaning & Formatting
        │
        ▼
     VALIDATE
 Data Quality Checks
        │
        ▼
      LOAD
    Snowflake
        │
   ┌────┴────┐
   ▼         ▼
Analytics   Dashboard
  Layer        Data
   │            │
   └──────┬─────┘
          ▼
       Power BI
```

#### Analytics

- Customer order analysis
- Revenue analysis
- Product category analysis
- Business dashboard
- Analysis-ready datasets

#### SQL Analytics

The project includes SQL analysis for:

- Customer purchasing behavior
- Revenue performance
- Product category performance
- Business reporting
- Dashboard-ready datasets

#### Project Structure

```text
E-commerce-Data-Warehouse/
│
├── 01_database_setup.sql
├── 02_create_tables.sql
├── 03_load_data.sql
├── 04_transform_data.sql
├── 05_analytics.sql
├── 06_create_orders.sql
├── 07_load_orders.sql
├── 08_customer_order_analysis.sql
├── 09_revenue_analysis.sql
├── 10_product_category_analysis.sql
└── 11_business_dashboard.sql
```

---

## Key Skills Demonstrated

- Built an automated end-to-end ETL pipeline using Python
- Implemented data extraction, transformation, and validation
- Loaded validated data into Snowflake
- Designed SQL-based data warehouse structures
- Created analytics and dashboard data layers
- Developed customer, revenue, and product analysis
- Designed analysis-ready datasets for business intelligence
- Implemented pipeline failure handling
- Worked with Python, Pandas, SQL, and Snowflake
- Used Git and GitHub for version control

---

## Tools & Technologies

```text
Python
Pandas
SQL
Snowflake
Power BI
Git
GitHub
Data Warehousing
ETL / ELT
Data Quality Validation
Business Intelligence
```

---

## Portfolio Highlights

This portfolio demonstrates practical experience in:

- End-to-end ETL pipeline development
- Data transformation and cleaning
- Data quality validation
- Cloud data warehousing
- SQL analytics
- Business intelligence
- Dashboard-ready data preparation
- Automation
- Version control
