SELECT * FROM [Task-2-Blossom Ezenwaka]
SELECT COUNT(*) AS TOTAL_RECORDS FROM [Task-2-Blossom Ezenwaka]
SELECT COUNT(DISTINCT CustomerID) AS UNIQUE_CUSTOMERS FROM [Task-2-Blossom Ezenwaka]
SELECT MIN(DATE) AS EARLIEST_ORDER, MAX(DATE) AS LATEST_ORDER FROM [Task-2-Blossom Ezenwaka]
SELECT DISTINCT [Order_Status] FROM [Task-2-Blossom Ezenwaka]

/*FILTERING AND SORTING*/
SELECT CustomerID,Product,Quantity,[Unit_Price],[Total_Price] FROM [Task-2-Blossom Ezenwaka] WHERE [Total_Price]>1000 ORDER BY [Total_Price] DESC
SELECT TOP 10 CustomerID,Product,Quantity,[Total_Price],[Order_Status] FROM [Task-2-Blossom Ezenwaka] ORDER BY [Total_Price] DESC
SELECT CustomerID,Product,Quantity,[Total_Price],[Order_Status] FROM [Task-2-Blossom Ezenwaka] WHERE [Order_Status]='Cancelled' AND [Total_Price] >1000 ORDER BY [Total_Price] DESC

/*DESCRIPTIVE STATISTICS*/
SELECT COUNT(*) AS [TOTAL ORDERS], 
SUM(Quantity) AS [TOTAL QUANTITY ORDERED], 
SUM(Total_Price) AS [TOTAL RECORDED ORDER VALUE], 
AVG(Total_Price) AS [AVERAGE ORDER VALUE], 
MIN(Total_Price) AS [MINIMUM ORDER VALUE], 
MAX(Total_Price) AS [MAXIMUM ORDER VALUE] 
FROM [Task-2-Blossom Ezenwaka]

/*PRODUCTS AND SALES ANALYSIS*/
SELECT [Order_Status], COUNT(*) AS Number_of_Orders, SUM ([Total_Price]) AS [TOTAL RECORDED ORDER VALUE], AVG([Total_Price]) AS [AVERAGE ORDER VALUE] FROM [Task-2-Blossom Ezenwaka] GROUP BY [Order_Status] ORDER BY Number_of_Orders DESC
SELECT Product, COUNT(*) AS Number_of_Orders, SUM(Quantity) AS Total_Units_Ordered FROM [Task-2-Blossom Ezenwaka] GROUP BY Product ORDER BY Number_of_Orders DESC
SELECT Product, COUNT(*) AS Number_of_Orders, SUM(Total_Price) AS Total_Recorded_Order_Value, AVG(Total_Price) AS Average_Order_Value FROM [Task-2-Blossom Ezenwaka] GROUP BY Product ORDER BY Total_Recorded_Order_Value DESC
SELECT Payment_Method, COUNT(*) AS Number_of_Orders, SUM(Total_Price) AS Total_Recorded_Order_Value, AVG(Total_Price) AS Average_Order_Value FROM [Task-2-Blossom Ezenwaka] GROUP BY Payment_Method ORDER BY Number_of_Orders DESC
SELECT [Referral_Source],COUNT(*) AS Number_of_Orders,COUNT(DISTINCT CustomerID) AS Unique_Customers,SUM([Total_Price]) AS Total_Recorded_Order_Value FROM [Task-2-Blossom Ezenwaka] GROUP BY [Referral_Source] ORDER BY Number_of_Orders DESC

/*CUSTOMER AND ORDER ANALYSIS*/
SELECT CustomerID, COUNT(*) AS Number_of_Orders, SUM([Total_Price]) AS Total_Recorded_Order_Value, AVG([Total_Price]) AS Average_Order_Value FROM [Task-2-Blossom Ezenwaka] GROUP BY CustomerID HAVING COUNT(*) >1 ORDER BY Number_of_Orders DESC
SELECT Coupon_Code, COUNT(*) AS Number_of_Orders, SUM([Total_Price]) AS Total_Recorded_Order_Value, AVG([Total_Price]) AS Average_Order_Value FROM [Task-2-Blossom Ezenwaka] GROUP BY Coupon_Code ORDER BY Number_of_Orders DESC
SELECT Product,[Order_Status], COUNT(*) AS Number_of_Orders, SUM([Total_Price]) AS Total_Recorded_Order_Value FROM [Task-2-Blossom Ezenwaka] WHERE [Order_Status] IN ('Cancelled','Returned') GROUP BY Product, [Order_Status] ORDER BY Number_of_Orders DESC
SELECT YEAR([Date]) AS Order_Year, MONTH([Date]) AS Order_Month,COUNT(*) AS Number_of_Orders,SUM([Total_Price]) AS Total_Recorded_Order_Value FROM [Task-2-Blossom Ezenwaka] GROUP BY YEAR([Date]),MONTH([Date]) ORDER BY Order_Year,Order_Month
SELECT CustomerID,[Date],Product,Quantity,[Unit_Price],[Total_Price],Quantity * [Unit_Price] AS Calculated_Total FROM [Task-2-Blossom Ezenwaka] WHERE ABS([Total_Price] - (Quantity * [Unit_Price])) > 0.01 ORDER BY [Date]