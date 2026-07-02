
use superstore;
select * from superstore;
SELECT * FROM superstore LIMIT 10;
SELECT COUNT(*) AS Total_Records
FROM superstore;
SELECT *
FROM superstore
WHERE Sales > 500;
SELECT *
FROM superstore
ORDER BY Profit DESC;
SELECT Category,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category;
SELECT
SUM(Sales) AS TotalSales,
AVG(Sales) AS AverageSales,
MAX(Sales) AS HighestSale,
MIN(Sales) AS LowestSale
FROM superstore;
SELECT Category,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 1000;

SELECT *
FROM superstore
WHERE Sales >
(
SELECT AVG(Sales)
FROM superstore
);

CREATE VIEW SalesSummary AS
SELECT Category,
SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category;
SELECT * FROM SalesSummary;

CREATE INDEX idx_category
ON superstore(Category);
SHOW INDEX FROM superstore;

CREATE TABLE managers(
Region TEXT,
ManagerName TEXT
);
INSERT INTO managers VALUES
('Central','Alice'),
('East','Bob'),
('South','Charlie'),
('West','David');

SELECT s.Region,
s.Category,
m.ManagerName
FROM superstore s
INNER JOIN managers m
ON s.Region=m.Region;

SELECT s.Region,
s.Category,
m.ManagerName
FROM superstore s
LEFT JOIN managers m
ON s.Region=m.Region;

SELECT s.Region,
s.Category,
m.ManagerName
FROM superstore s
RIGHT JOIN managers m
ON s.Region=m.Region;

