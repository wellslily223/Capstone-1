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
SELECT COUNT(Category), COUNT(Transaction_Date), Sale_Amount, State
FROM store_sales
FULL JOIN inventory_categories, store_locations
WHERE State = 'Maine'
GROUP BY Transaction_Date, Sale_Amount, Category, State; 

-- 5 
SELECT Store_ID, State, Sale_Amount
FROM store_sales
FULL JOIN Store_Locations
WHERE State = 'Maine'
ORDER BY Sale_Amount DESC


-- 6

-- I would recommend that we focus our sales on the highest performing stores in the region (736, 851, 836, etc). 
-- Potentially, we could pour our resources into heightening the sales of lower performing stores (Such as 910 or 903) to help them succeed, but I believe focusing on the most successful stores would be better for long-term customer engagement. 
