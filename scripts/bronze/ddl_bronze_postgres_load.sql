/*
===============================================================================
DDL Script: Insert Bronze Tables
===============================================================================
Script Purpose:
    This script inserts data into tables from csv files in the 'bronze' schema, truncating existing data 
    if they already exist.
	  Run this script to re-insert the data of 'bronze' Tables
===============================================================================
*/

-- TRUNCATE TABLE bronze.crm_cust_info;
-- COPY bronze.crm_cust_info 
-- FROM 'D:\zaid\Data Engineering\sql-data-warehouse-project\datasets\source_crm\cust_info.csv' 
-- WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- TRUNCATE TABLE bronze.crm_prd_info;
-- COPY bronze.crm_prd_info 
-- FROM 'D:\zaid\Data Engineering\sql-data-warehouse-project\datasets\source_crm\prd_info.csv' 
-- WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- TRUNCATE TABLE bronze.crm_sales_details;
-- COPY bronze.crm_sales_details 
-- FROM 'D:\zaid\Data Engineering\sql-data-warehouse-project\datasets\source_crm\sales_details.csv' 
-- WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- TRUNCATE TABLE bronze.erp_cust_az12;
-- COPY bronze.erp_cust_az12 
-- FROM 'D:\zaid\Data Engineering\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv' 
-- WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- TRUNCATE TABLE bronze.erp_loc_a101;
-- COPY bronze.erp_loc_a101 
-- FROM 'D:\zaid\Data Engineering\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv' 
-- WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- TRUNCATE TABLE bronze.erp_px_cat_g1v2;
-- COPY bronze.erp_px_cat_g1v2 
-- FROM 'D:\zaid\Data Engineering\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv' 
-- WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');