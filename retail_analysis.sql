/* ============================================
   RETAIL SALES ANALYSIS
   Table Name: sales
   ============================================ */

-- 1. PREVIEW DATA
SELECT * FROM sales LIMIT 10;

-- 2. TOTAL SALES, PROFIT, QUANTITY
SELECT
    ROUND(SUM(`Sales`), 2) AS total_sales,
    ROUND(SUM(`Profit`), 2) AS total_profit,
    SUM(`Quantity`) AS total_quantity
FROM sales;

-- 3. SALES BY REGION
SELECT
    `Region`,
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM sales
GROUP BY `Region`
ORDER BY total_sales DESC;

-- 4. SALES BY CATEGORY
SELECT
    `Category`,
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM sales
GROUP BY `Category`
ORDER BY total_sales DESC;

-- 5. SALES BY SUB-CATEGORY
SELECT
    `Sub-Category`,
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM sales
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;

-- 6. PROFIT BY CATEGORY
SELECT
    `Category`,
    ROUND(SUM(`Profit`), 2) AS total_profit
FROM sales
GROUP BY `Category`
ORDER BY total_profit DESC;

-- 7. PROFIT BY SEGMENT
SELECT
    `Segment`,
    ROUND(SUM(`Profit`), 2) AS total_profit
FROM sales
GROUP BY `Segment`
ORDER BY total_profit DESC;

-- 8. TOP 10 STATES BY SALES
SELECT
    `State`,
    ROUND(SUM(`Sales`), 2) AS total_sales
FROM sales
GROUP BY `State`
ORDER BY total_sales DESC
LIMIT 10;

-- 9. DISCOUNT IMPACT ON PROFIT
SELECT
    `Discount`,
    ROUND(SUM(`Profit`), 2) AS total_profit
FROM sales
GROUP BY `Discount`
ORDER BY `Discount`;

-- 10. AVERAGE PROFIT PER ORDER
SELECT
    ROUND(AVG(`Profit`), 2) AS avg_profit
FROM sales;
