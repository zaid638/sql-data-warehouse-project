# Data Warehouse and Analytics Project<br/><br/>

This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.<br/><br/>

---

## Data Architecture<br/><br/>

The data architecture for this project follows **Medallion** Architecture **Bronze**, **Silver**, and **Gold** layers:<br/><br/>

![architechture](https://github.com/zaid638/sql-data-warehouse-project/blob/main/docs/Data_Architechture.png)<br/><br/>



1. **Bronze Layer:** Stores raw data as-is from the source systems. Data is ingested from CSV Files into PostgreSQL Database.<br/>

2. **Silver Layer:** This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.<br/>

3. **Gold Layer:** Houses business-ready data modeled into a star schema required for reporting and analytics.<br/><br/>

---

## Project Overview<br/><br/>

1. **Data Architecture:** Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.<br/>

2. **ETL Pipelines:** Extracting, transforming, and loading data from source systems into the warehouse.<br/>

3. **Data Modeling:** Developing fact and dimension tables optimized for analytical queries.<br/>

4. **Analytics & Reporting:** Creating SQL-based reports and dashboards for actionable insights.<br/><br/>

---

## Specifications<br/><br/>

* **Data Sources:** Import data from two source systems (ERP and CRM) provided as CSV files.<br/>
* **Data Quality:** Cleanse and resolve data quality issues prior to analysis.<br/>
* **Integration:** Combine both sources into a single, user-friendly data model designed for analytical queries.<br/>
* **Scope:** Focus on the latest dataset only; historization of data is not required.<br/>
* **Documentation:** Provide clear documentation of the data model to support both business stakeholders and analytics teams.<br/><br/>

---

## BI: Analytics \& Reporting (Data Analysis)<br/><br/>

Develop SQL-based analytics to deliver detailed insights into:<br/>

* Customer Behavior
* Product Performance
* Sales Trends<br/>

These insights empower stakeholders with key business metrics, enabling strategic decision-making.<br/>

---

