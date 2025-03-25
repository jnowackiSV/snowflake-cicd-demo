-- TABLES
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/bronze/Tables/Customer.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/bronze/Tables/Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/bronze/Tables/Product.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/silver/Tables/Customer.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/silver/Tables/Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/silver/Tables/Product.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/gold/Tables/Shipping.sql USING (ENV => 'DEV');
 
-- VIEWS
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/bronze/Views/Customer_Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/silver/Views/Customer_Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/silver/Views/Product_Inventory.sql USING (ENV => 'DEV');

-- PROCEDURES
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/main/snowflake-cicd-demo/bronze/Procedures/Load_Bronze_Customer_Orders.sql USING (ENV => 'DEV');