-- switch to master database
USE master;
GO

-- if database exists, drop it
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- create new database
CREATE DATABASE DataWarehouse;
GO

-- move into the new database
USE DataWarehouse;
GO

-- create schemas for different layers
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
