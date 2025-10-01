
USE DataWarehouse;
SELECT COUNT(*), cst_id
FROM bronze.crm_cust_info
GROUP BY (cst_id)
HAVING COUNT(cst_id) > 1 OR cst_id is NULL
