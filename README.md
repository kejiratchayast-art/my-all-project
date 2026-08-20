# E-commerce Data Pipeline

An end-to-end ETL data pipeline that extracts, transforms, and loads e-commerce sales data into Snowflake for analytics.

## Project Overview

This project demonstrates a basic Data Engineering workflow using Python, Pandas, and Snowflake.

The pipeline follows the ETL process:

**Extract → Transform → Load → Analytics**

## Architecture

```text
sales.csv
   ↓
Extract
   ↓
clean_sales.csv
   ↓
Transform
   ↓
Snowflake RAW
   ↓
Analytics Layer
   ↓
Dashboard Data

