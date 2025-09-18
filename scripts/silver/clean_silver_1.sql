-- Check for Nulls or Duplicates in Primary Key

-- SELECT cst_id, COUNT(*)
-- FROM silver.crm_cust_info
-- GROUP BY cst_id
-- HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for unwanted spaces

-- SELECT cst_firstname
-- FROM silver.crm_cust_info
-- WHERE cst_firstname != TRIM(cst_firstname);

-- Data Standadization & Data Consistancy

-- SELECT DISTINCT cst_gender
-- FROM silver.crm_cust_info;

-- SELECT DISTINCT cst_marital_status
-- FROM silver.crm_cust_info;

-- SELECT * FROM silver.crm_cust_info;


-----------------------------------------------------------------------------------------------------

-- SELECT * FROM bronze.crm_prd_info;

-- Check for Nulls or Duplicates in Primary Key

-- SELECT prd_id, COUNT(*)
-- FROM bronze.crm_prd_info
-- GROUP BY prd_id
-- HAVING COUNT(*) > 1 OR prd_id IS NULL;


-- Check for unwanted spaces

-- SELECT prd_nm
-- FROM bronze.crm_prd_info
-- WHERE prd_nm != TRIM(prd_nm);

-- Check for Nulls or Negative Numbers

-- SELECT prd_cost
-- FROM silver.crm_prd_info
-- WHERE prd_cost < 0 OR prd_cost IS NULL;

-- Data Standadization & Data Consistancy

-- SELECT DISTINCT prd_line
-- FROM silver.crm_prd_info;

-- Check For Invalid Date Orders

-- SELECT *
-- FROM silver.crm_prd_info
-- WHERE prd_end_dt < prd_start_dt;

------------------------------------------------------------------------------------------------------------

-- SELECT * FROM bronze.crm_sales_details;

-- Check For Invalid Dates

-- SELECT NULLIF(sls_due_dt, 0) sls_due_dt
-- FROM bronze.crm_sales_details
-- WHERE sls_due_dt <= 0 
-- OR LENGTH(CAST(sls_due_dt AS VARCHAR)) != 8
-- OR sls_due_dt > 20200101 
-- OR sls_due_dt < 20000101;

-- Check For Invalid Date Orders

-- SELECT *
-- FROM bronze.crm_sales_details
-- WHERE sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt;

-- Check Data Consistency: Between Sales, Quantity, and Price
-- >> Sales = Quantity * Price
-- >> Values must not be NULL, Zero, OR Negative

-- SELECT DISTINCT sls_sales AS sls_sales_old, 
-- sls_quantity, 
-- sls_price AS sls_price_old,
-- CASE WHEN sls_sales IS NULL OR sls_sales <= 0 OR sls_sales != sls_quantity * ABS(sls_price)
-- 	THEN sls_quantity * ABS(sls_price)
-- 	ELSE sls_sales
-- END AS sls_sales,
-- CASE WHEN sls_price IS NULL OR sls_price <= 0
-- 	THEN sls_sales / NULLIF(sls_quantity, 0)
-- 	ELSE sls_price
-- END AS sls_price
-- FROM bronze.crm_sales_details
-- WHERE sls_sales != sls_quantity * sls_price
-- OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
-- OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
-- ORDER BY sls_sales, sls_quantity, sls_price;

----------------------------------------------------------------------------------

-- Data Standadization & Data Consistancy

-- SELECT 
-- cid, 
-- bdate,
-- gen
-- FROM bronze.erp_cust_az12
-- WHERE cid LIKE '%AW00011000';

-- -- Identify Out of Range Dates

-- SELECT 
-- bdate
-- FROM bronze.erp_cust_az12
-- WHERE bdate < '1924-01-01' OR bdate > CURRENT_DATE;

-- Data Standardization & Consistency

-- SELECT DISTINCT gen
-- FROM bronze.erp_cust_az12;

---------------------------------------------------------------------

-- Data Standardization & Consistency

-- SELECT DISTINCT cntry
-- FROM bronze.erp_loc_a101
-- ORDER BY cntry;

------------------------------------------------------------------------------

-- Check for unwanted spaces

-- SELECT * 
-- FROM bronze.erp_px_cat_g1v2
-- WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance);

-- Data Standardization & Consistency

-- SELECT DISTINCT maintenance
-- FROM bronze.erp_px_cat_g1v2;

--------------------------------------------------------------------

