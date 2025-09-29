-- Project Name- FRAUD DETECTION SQL PROJECT 
-- Goal- To analyze financial transaction data using SQL to uncover spending patterns, customer behavior 
-- and potential risk indicators.
-- Objective: To build queries from basic to advanced that generate actionable business insights 
-- such as transaction trends, channel performance, customer segmentation, and fraud detection signals.


CREATE DATABASE fraud_detection;
USE fraud_detection;

-- CSV File loaded successfully
Show tables;

-- Checking the database 
SELECT * FROM fraud_new;

-- QUERIES
-- 1. Count total transactions
SELECT COUNT(*) AS TotalTransactions 
FROM fraud_new;
-- INSIGHT - 2512 is the total transaction

-- 2. Finding distinct transaction types
SELECT DISTINCT TransactionType 
FROM fraud_new;
-- INSIGHT - Transaction happens only through debit and credit card. 

-- 3. Total debit vs credit amounts
SELECT TransactionType, SUM(TransactionAmount) AS TotalAmount
FROM fraud_new
GROUP BY TransactionType;
-- INSIGHT - More money is being spent (debit)

-- 4. Average transaction amount by channel
SELECT Channel, AVG(TransactionAmount) AS AvgAmount
FROM fraud_new
GROUP BY Channel
ORDER BY AvgAmount DESC;
-- INSIGHT - ATM has higher-value transactions.

-- 5. Top 5 locations by transaction volume
SELECT Location, COUNT(*) AS TransactionCount
FROM fraud_new
GROUP BY Location
ORDER BY TransactionCount DESC
LIMIT 5;
-- INSIGHT - Fort Worth is the busiest location for business decisions.

-- 6. Average account balance by occupation
SELECT CustomerOccupation, AVG(AccountBalance) AS AvgBalance
FROM fraud_new
GROUP BY CustomerOccupation
ORDER BY AvgBalance DESC;
-- INSIGHT - Doctor hold higher balances.

-- 7. Identify high-value transactions (above 1000)
SELECT TransactionID, TransactionAmount, Location, Channel
FROM fraud_new
WHERE TransactionAmount > 1000
ORDER BY TransactionAmount DESC;
-- INSIGHT - This is useful for fraud/risk monitoring as Portland has higher Transaction Amount.

-- 8. Top 3 occupations by total transaction amount
SELECT CustomerOccupation, SUM(TransactionAmount) AS TotalAmount
FROM fraud_new
GROUP BY CustomerOccupation
ORDER BY TotalAmount DESC
LIMIT 3;
-- INSIGHT - Student contribute most revenue.

-- 9. Correlation check: login attempts vs transaction amount
SELECT LoginAttempts, AVG(TransactionAmount) AS AvgTransaction
FROM fraud_new
GROUP BY LoginAttempts
ORDER BY LoginAttempts;
-- INSIGHT - Higher login attempts with high amounts may signal fraud.

-- 10. Find top 5 customers with highest balances
SELECT TransactionID, AccountBalance
FROM fraud_new
ORDER BY AccountBalance DESC
LIMIT 5;
-- INSIGHT - Potential high-value customers for premium services

-- 11. Net balance change per location
SELECT Location,
       SUM(CASE WHEN TransactionType = 'Credit' THEN TransactionAmount ELSE -TransactionAmount END) AS NetBalanceChange
FROM fraud_new
GROUP BY Location
ORDER BY NetBalanceChange DESC;
-- INSIGHT - This helps to show whether locations are net contributors (more deposits) or spenders (more withdrawals).

-- END OF THE PROJECT --