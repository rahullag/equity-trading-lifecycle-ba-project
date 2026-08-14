# Power BI Trading Dashboard

## Overview

This dashboard is designed to provide traders, operations teams, risk analysts, and management with a consolidated view of equity trading activity and trade lifecycle performance.

The dashboard uses synthetic trading data and focuses on order activity, execution performance, settlement monitoring, exceptions, trade value, and portfolio-related KPIs.

---

## Dashboard Objectives

The dashboard helps business users:

- Monitor total orders and trades
- Track executed and rejected orders
- Analyze trade value
- Monitor execution performance
- Monitor settlement success and failures
- Identify operational exceptions
- Analyze trader activity
- Analyze security-level trading activity
- Monitor trading trends
- Support operational and management decision-making

---

## Key KPIs

| KPI | Description |
|---|---|
| Total Orders | Total number of orders received |
| Total Trades | Total number of executed trades |
| Trade Value | Total monetary value of executed trades |
| Execution Rate | Percentage of orders successfully executed |
| Rejection Rate | Percentage of orders rejected |
| Settlement Success Rate | Percentage of trades successfully settled |
| Settlement Failure Rate | Percentage of trades that failed settlement |
| Open Exceptions | Number of unresolved trading or settlement exceptions |
| Exception Resolution Time | Average time required to resolve exceptions |
| Average Trade Value | Average monetary value per executed trade |

---

## Recommended Dashboard Layout

### Section 1 — Executive Summary

Display KPI cards for:

- Total Orders
- Total Trades
- Trade Value
- Execution Rate
- Settlement Success Rate
- Open Exceptions

This section provides an immediate overview of trading performance.

---

### Section 2 — Order & Execution Analysis

Recommended visuals:

1. Orders by Status
2. Orders by Buy/Sell Side
3. Orders by Order Type
4. Execution Rate
5. Rejection Rate
6. Orders by Trader

### Business Questions

- How many orders were executed?
- How many orders were rejected?
- Which traders generated the highest order volume?
- What percentage of orders were successfully executed?
- Which order types have higher rejection rates?

---

### Section 3 — Trade Value Analysis

Recommended visuals:

1. Trade Value by Security
2. Trade Value by Trader
3. Trade Value by Date
4. Top 10 Securities by Trade Value
5. Buy vs Sell Trade Value

### Business Questions

- Which securities have the highest trading value?
- Which traders generate the highest trade value?
- Is trading activity increasing or decreasing?
- What is the distribution between buy and sell activity?

---

### Section 4 — Settlement Monitoring

Recommended visuals:

1. Settlement Status
2. Settlement Success Rate
3. Settlement Failure Rate
4. Settlement Failures by Security
5. Settlement Failures by Trader

### Business Questions

- What percentage of trades settled successfully?
- Which securities have the highest settlement failures?
- Which traders or processes generate more settlement exceptions?
- Which settlement issues require operational attention?

---

### Section 5 — Exception Management

Recommended visuals:

1. Open Exceptions
2. Exceptions by Type
3. Exceptions by Severity
4. Exceptions by Status
5. Exceptions by Security
6. Average Exception Resolution Time

### Business Questions

- How many exceptions are currently open?
- Which exception types occur most frequently?
- Which exceptions are critical?
- Which exceptions take the longest to resolve?

---

## Recommended Filters / Slicers

The dashboard should provide filters for:

- Trade Date
- Trader
- Security
- Buy/Sell Side
- Order Type
- Order Status
- Trade Status
- Settlement Status
- Exception Type
- Exception Status

These filters allow business users to perform focused analysis.

---

## Suggested Power BI Pages

### Page 1 — Trading Overview

KPIs:

- Total Orders
- Total Trades
- Trade Value
- Execution Rate
- Rejection Rate

Visuals:

- Orders by Status
- Orders by Trader
- Trade Value Trend
- Buy vs Sell Analysis

---

### Page 2 — Settlement & Operations

KPIs:

- Settlement Success Rate
- Settlement Failure Rate
- Open Exceptions
- Average Resolution Time

Visuals:

- Settlement Status
- Settlement Failures by Security
- Exceptions by Type
- Exceptions by Severity

---

### Page 3 — Trader & Security Analysis

Visuals:

- Trade Value by Trader
- Trade Value by Security
- Orders by Trader
- Top Securities
- Buy vs Sell Analysis

---

## Important DAX Measures

### Total Orders

```DAX
Total Orders = COUNTROWS('TradingData')

Total Trades =
CALCULATE(
    COUNTROWS('TradingData'),
    'TradingData'[Order_Status] = "Executed"
)

Total Trade Value =
SUM('TradingData'[Trade_Value])

Execution Rate =
DIVIDE(
    [Total Trades],
    [Total Orders],
    0
)

Rejection Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS('TradingData'),
        'TradingData'[Order_Status] = "Rejected"
    ),
    [Total Orders],
    0
)

Settlement Success Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS('TradingData'),
        'TradingData'[Settlement_Status] = "Settled"
    ),
    [Total Trades],
    0
)

Settlement Failure Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS('TradingData'),
        'TradingData'[Settlement_Status] = "Failed"
    ),
    [Total Trades],
    0
)

---

## Data Model

The dashboard uses the synthetic trading dataset as the primary trading fact table.

Important fields include:

- Order ID
- Trade ID
- Trade Date
- Trader
- Security
- Buy/Sell Side
- Order Type
- Quantity
- Price
- Trade Value
- Order Status
- Trade Status
- Settlement Status
- Exception Type
- Exception Status

---

## Business Insights

The dashboard should help identify:

- High-volume traders
- High-value securities
- Execution performance
- Order rejection patterns
- Settlement failure trends
- Securities with recurring settlement issues
- Open operational exceptions
- High-severity exceptions
- Exception resolution delays

---

## Business Analyst Contribution

As a Business Analyst, my contribution includes:

1. Understanding stakeholder reporting requirements
2. Identifying required KPIs
3. Defining KPI calculation logic
4. Defining data requirements
5. Documenting business rules
6. Creating functional reporting requirements
7. Supporting dashboard validation
8. Preparing UAT scenarios
9. Validating dashboard results against source data
10. Gathering stakeholder feedback

---

## UAT Examples

### UAT-001 — Total Orders

**Given:** Trading data is loaded.

**When:** The user opens the Trading Overview dashboard.

**Then:** Total Orders should match the valid order count in the source dataset.

### UAT-002 — Trade Value

**Given:** Executed trade records are available.

**When:** The user views Total Trade Value.

**Then:** The dashboard should display the correct sum of applicable trade values.

### UAT-003 — Settlement Success Rate

**Given:** Executed trades contain settlement status.

**When:** The user views Settlement Success Rate.

**Then:** The dashboard should calculate the percentage using the defined business rule.

### UAT-004 — Date Filter

**Given:** Multiple trading dates are available.

**When:** The user selects a date range.

**Then:** All applicable KPIs and visuals should update consistently.

---

## Data Quality Checks

Before dashboard validation:

- Order IDs should be unique where applicable
- Trade IDs should be unique where applicable
- Trade dates should be valid
- Quantity should be greater than zero
- Price should be greater than zero
- Trade Value should be calculated correctly
- Status values should be standardized
- Settlement status should be populated where applicable
- Exception information should be consistent
- Dataset should contain only synthetic portfolio data

---

## Expected Business Value

The dashboard provides:

- Better trading visibility
- Faster operational monitoring
- Improved settlement tracking
- Better exception management
- Consistent KPI reporting
- Data-driven decision-making
- Improved management reporting
- Better business-user transparency

---

## Project Status

**Documentation:** Complete

**Synthetic Dataset:** Available

**SQL Analysis:** Available

**KPI Analysis:** Available

**Power BI Dashboard Specification:** Complete

**Next Step:** Build the dashboard in Power BI using the synthetic trading dataset.

---

## Disclaimer

This dashboard specification is part of an independent Business Analyst portfolio project.

The dataset is synthetic and does not represent live market or client data.

No real-money trading or live exchange connectivity is involved.

Settlement Failure Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS('TradingData'),
        'TradingData'[Settlement_Status] = "Failed"
    ),
    [Total Trades],
    0
)


So it becomes:

```text
Settlement Failure Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS('TradingData'),
        'TradingData'[Settlement_Status] = "Failed"
    ),
    [Total Trades],
    0
)
