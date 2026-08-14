/*
Equity Trading & Trade Lifecycle Management
Business Analyst Portfolio Project

Purpose:
Business and operational analysis of synthetic equity trading data.

Dataset:
analytics/sample-trading-data.csv
*/

-- =========================================================
-- 1. TOTAL ORDERS
-- =========================================================

SELECT
    COUNT(*) AS total_orders
FROM trading_data;


-- =========================================================
-- 2. TOTAL EXECUTED TRADES
-- =========================================================

SELECT
    COUNT(Trade_ID) AS total_trades
FROM trading_data
WHERE Order_Status = 'Executed';


-- =========================================================
-- 3. TOTAL TRADE VALUE
-- =========================================================

SELECT
    SUM(Trade_Value) AS total_trade_value
FROM trading_data
WHERE Order_Status = 'Executed';


-- =========================================================
-- 4. BUY VS SELL ORDERS
-- =========================================================

SELECT
    Side,
    COUNT(*) AS order_count
FROM trading_data
GROUP BY Side
ORDER BY order_count DESC;


-- =========================================================
-- 5. EXECUTION RATE
-- =========================================================

SELECT
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Order_Status = 'Executed' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS execution_rate_percentage
FROM trading_data;


-- =========================================================
-- 6. ORDER STATUS DISTRIBUTION
-- =========================================================

SELECT
    Order_Status,
    COUNT(*) AS order_count
FROM trading_data
GROUP BY Order_Status
ORDER BY order_count DESC;


-- =========================================================
-- 7. SETTLEMENT STATUS
-- =========================================================

SELECT
    Settlement_Status,
    COUNT(*) AS settlement_count
FROM trading_data
GROUP BY Settlement_Status
ORDER BY settlement_count DESC;


-- =========================================================
-- 8. SETTLEMENT SUCCESS RATE
-- =========================================================

SELECT
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Settlement_Status = 'Settled' THEN 1
                ELSE 0
            END
        )
        /
        NULLIF(
            SUM(
                CASE
                    WHEN Order_Status = 'Executed' THEN 1
                    ELSE 0
                END
            ),
            0
        ),
        2
    ) AS settlement_success_rate_percentage
FROM trading_data;


-- =========================================================
-- 9. SETTLEMENT FAILURES
-- =========================================================

SELECT
    Order_ID,
    Trade_ID,
    Security,
    Trader,
    Trade_Value,
    Settlement_Status,
    Exception_Severity
FROM trading_data
WHERE Settlement_Status = 'Failed';


-- =========================================================
-- 10. OPEN EXCEPTIONS
-- =========================================================

SELECT
    COUNT(*) AS open_exceptions
FROM trading_data
WHERE Exception_Status = 'Open';


-- =========================================================
-- 11. EXCEPTIONS BY SEVERITY
-- =========================================================

SELECT
    Exception_Severity,
    COUNT(*) AS exception_count
FROM trading_data
WHERE Exception_Status = 'Open'
GROUP BY Exception_Severity
ORDER BY exception_count DESC;


-- =========================================================
-- 12. TOP SECURITIES BY TRADE VALUE
-- =========================================================

SELECT
    Security,
    SUM(Trade_Value) AS total_trade_value
FROM trading_data
WHERE Order_Status = 'Executed'
GROUP BY Security
ORDER BY total_trade_value DESC;


-- =========================================================
-- 13. TRADER PERFORMANCE
-- =========================================================

SELECT
    Trader,
    COUNT(*) AS total_orders,
    SUM(
        CASE
            WHEN Order_Status = 'Executed' THEN 1
            ELSE 0
        END
    ) AS executed_trades,
    SUM(Trade_Value) AS total_trade_value
FROM trading_data
GROUP BY Trader
ORDER BY total_trade_value DESC;


-- =========================================================
-- 14. REJECTION RATE
-- =========================================================

SELECT
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Order_Status = 'Rejected' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS rejection_rate_percentage
FROM trading_data;


-- =========================================================
-- 15. DAILY TRADING ACTIVITY
-- =========================================================

SELECT
    Trade_Date,
    COUNT(Trade_ID) AS trades,
    SUM(Trade_Value) AS daily_trade_value
FROM trading_data
WHERE Order_Status = 'Executed'
GROUP BY Trade_Date
ORDER BY Trade_Date;


-- =========================================================
-- 16. BUY VS SELL TRADE VALUE
-- =========================================================

SELECT
    Side,
    SUM(Trade_Value) AS total_trade_value
FROM trading_data
WHERE Order_Status = 'Executed'
GROUP BY Side
ORDER BY total_trade_value DESC;


-- =========================================================
-- 17. HIGHEST VALUE TRADE
-- =========================================================

SELECT
    Order_ID,
    Trade_ID,
    Trader,
    Security,
    Side,
    Quantity,
    Execution_Price,
    Trade_Value
FROM trading_data
WHERE Order_Status = 'Executed'
ORDER BY Trade_Value DESC
LIMIT 1;


-- =========================================================
-- 18. SECURITIES WITH SETTLEMENT FAILURES
-- =========================================================

SELECT
    Security,
    COUNT(*) AS settlement_failures,
    SUM(Trade_Value) AS affected_trade_value
FROM trading_data
WHERE Settlement_Status = 'Failed'
GROUP BY Security
ORDER BY affected_trade_value DESC;


-- =========================================================
-- 19. EXCEPTION IMPACT ANALYSIS
-- =========================================================

SELECT
    Exception_Severity,
    COUNT(*) AS exception_count,
    SUM(Trade_Value) AS affected_trade_value
FROM trading_data
WHERE Exception_Status = 'Open'
GROUP BY Exception_Severity
ORDER BY affected_trade_value DESC;


-- =========================================================
-- 20. BUSINESS KPI SUMMARY
-- =========================================================

SELECT
    COUNT(*) AS total_orders,

    SUM(
        CASE
            WHEN Order_Status = 'Executed' THEN 1
            ELSE 0
        END
    ) AS total_executed_trades,

    SUM(
        CASE
            WHEN Order_Status = 'Rejected' THEN 1
            ELSE 0
        END
    ) AS rejected_orders,

    SUM(
        CASE
            WHEN Settlement_Status = 'Settled' THEN 1
            ELSE 0
        END
    ) AS settled_trades,

    SUM(
        CASE
            WHEN Settlement_Status = 'Failed' THEN 1
            ELSE 0
        END
    ) AS failed_settlements,

    SUM(
        CASE
            WHEN Exception_Status = 'Open' THEN 1
            ELSE 0
        END
    ) AS open_exceptions,

    SUM(Trade_Value) AS total_trade_value

FROM trading_data;


-- =========================================================
-- BUSINESS INSIGHTS TO DERIVE
-- =========================================================

/*
The SQL analysis should help answer:

1. How many orders were received?
2. How many orders were successfully executed?
3. What is the execution rate?
4. What is the total trading value?
5. Which securities generated the highest trading value?
6. Which traders handled the highest trading activity?
7. What percentage of trades settled successfully?
8. Which trades failed settlement?
9. How many operational exceptions are open?
10. What is the severity of those exceptions?
11. Which securities have the highest settlement risk?
12. What trends should management monitor?
*/
