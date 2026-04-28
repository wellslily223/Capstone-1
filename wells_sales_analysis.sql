USE sample_sales;
-- Erbayne Middleton - Maine - Northeast
-- I will be analyzing the Northeast Maine region!

-- Question List
-- 1. What is total revenue overall for sales in the assigned territory, plus the start date and end date that tell you what period the data covers?
-- 2. What is the month by month revenue breakdown for the sales territory?
-- 3. Provide a comparison of total revenue for the specific sales territory and the region it belongs to.
-- 4. What is the number of transactions per month and average transaction size by product category for the sales territory?
-- 5. Can you provide a ranking of in-store sales performance by each store in the sales territory, or aranking of online sales performance by state within an online sales territory?
-- 6. What is your recommendation for where to focus sales attention in the next quarter?

-- 1
SELECT SUM(Sale_Amount), Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine'
GROUP BY Transaction_Date, StoreLocation;

-- 2
SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-01%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-02%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-03%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-04%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-05%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-06%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-07%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-08%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-09%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-10%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-11%';

SELECT Sale_Amount, Transaction_Date, StoreLocation, State
FROM Store_Sales
FULL JOIN Store_Locations
WHERE State = 'Maine' AND Transaction_Date LIKE '%2022-12%';

-- 3
SELECT SUM(Sale_Amount), Transaction_Date, Region
FROM Store_Sales
FULL JOIN Management
WHERE Region = 'Northeast'
GROUP BY Transaction_Date, Region;

-- 4
SELECT Transaction_Date, COUNT(DISTINCT ID), Prod_Num, Sale_Amount, Category, State
FROM store_sales
FULL JOIN inventory_categories, store_locations
WHERE State = 'Maine'
GROUP BY ID, Prod_Num, Sale_Amount, Category


-- 5 
SELECT 


-- 6

