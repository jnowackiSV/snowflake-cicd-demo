-- TABLES
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/bronze/Tables/Customer.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/bronze/Tables/Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/bronze/Tables/Product.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/silver/Tables/Customer.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/silver/Tables/Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/silver/Tables/Product.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/gold/Tables/Shipping.sql USING (ENV => 'DEV');
 
-- VIEWS
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/bronze/Views/Customer_Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/silver/Views/Customer_Orders.sql USING (ENV => 'DEV');
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/silver/Views/Product_Inventory.sql USING (ENV => 'DEV');

-- PROCEDURES
EXECUTE IMMEDIATE FROM @DEMO_SNOWFLAKE_REPO/branches/master/bronze/Procedures/Load_Bronze_Customer_Orders.sql USING (ENV => 'DEV');
