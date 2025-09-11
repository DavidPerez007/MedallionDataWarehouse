USE DataWarehouse
TRUNCATE TABLE bronze.crm_cust_info;

SET NOCOUNT ON --reduce the network traffic by stopping the msg that shows the nb of rows affected
BULK INSERT bronze.crm_cust_info
FROM '/var/opt/mssql/backup/crm_data/cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);



SET NOCOUNT ON --reduce the network traffic by stopping the msg that shows the nb of rows affected
BULK INSERT bronze.crm_prd_info
FROM '/var/opt/mssql/backup/crm_data/prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


SET NOCOUNT ON --reduce the network traffic by stopping the msg that shows the nb of rows affected
BULK INSERT bronze.crm_sales_details
FROM '/var/opt/mssql/backup/crm_data/sales_details.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


# CRP INFO

SET NOCOUNT ON --reduce the network traffic by stopping the msg that shows the nb of rows affected
BULK INSERT bronze.erp_cust_az12
FROM '/var/opt/mssql/backup/erp_data/CUST_AZ12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

SET NOCOUNT ON --reduce the network traffic by stopping the msg that shows the nb of rows affected
BULK INSERT bronze.erp_loc_a101
FROM '/var/opt/mssql/backup/erp_data/LOC_A101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);


SET NOCOUNT ON --reduce the network traffic by stopping the msg that shows the nb of rows affected
BULK INSERT bronze.erp_px_cat_g1v2
FROM '/var/opt/mssql/backup/erp_data/PX_CAT_G1V2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);