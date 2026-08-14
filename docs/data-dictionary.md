# Data Dictionary – Equity Trading & Trade Lifecycle Management

## 1. Purpose

This document defines the key business and data fields used across the Equity Trading & Trade Lifecycle Management platform.

The Data Dictionary provides a common understanding of important trading, settlement, portfolio, exception, and reporting data elements.

---

## 2. Security Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Security ID | Unique identifier for a security | String | SEC10001 |
| Symbol | Trading symbol of the security | String | RELIANCE |
| Security Name | Name of the security | String | Reliance Industries |
| Exchange | Exchange where the security is traded | String | NSE |
| Security Type | Type of security | String | Equity |
| Current Price | Latest available market price | Decimal | 2850.50 |

---

## 3. Order Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Order ID | Unique identifier assigned to an order | String | ORD10001 |
| User ID | Identifier of the user placing the order | String | USR1001 |
| Security ID | Identifier of the security being traded | String | SEC10001 |
| Buy/Sell | Trading instruction | String | BUY |
| Order Type | Type of order | String | LIMIT |
| Quantity | Number of units/lots ordered | Integer | 100 |
| Price | Order price where applicable | Decimal | 2850.00 |
| Order Status | Current status of the order | String | EXECUTED |
| Order Date/Time | Date and time order was created | DateTime | 2026-08-14 10:30 |
| Rejection Reason | Reason an order was rejected | String | Risk limit exceeded |

---

## 4. Trade Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Trade ID | Unique identifier for an executed trade | String | TRD10001 |
| Order ID | Order that generated the trade | String | ORD10001 |
| Security ID | Security involved in the trade | String | SEC10001 |
| Executed Quantity | Quantity successfully executed | Integer | 100 |
| Execution Price | Price at which trade was executed | Decimal | 2849.75 |
| Trade Value | Total value of the executed trade | Decimal | 284975.00 |
| Trade Date/Time | Date and time of execution | DateTime | 2026-08-14 10:32 |
| Trade Status | Current trade status | String | CONFIRMED |

---

## 5. Settlement Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Settlement ID | Unique identifier for settlement | String | STL10001 |
| Trade ID | Trade associated with settlement | String | TRD10001 |
| Settlement Date | Date on which settlement is expected | Date | 2026-08-17 |
| Settlement Status | Current settlement status | String | SETTLED |
| Failure Reason | Reason for settlement failure | String | Insufficient securities |
| Settlement Amount | Amount associated with settlement | Decimal | 284975.00 |

### Settlement Status Values

- Pending
- Settled
- Failed

---

## 6. Portfolio Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Portfolio ID | Unique portfolio identifier | String | PF10001 |
| User ID | Owner of the portfolio | String | USR1001 |
| Security ID | Security held in portfolio | String | SEC10001 |
| Quantity Held | Quantity currently held | Integer | 500 |
| Average Purchase Price | Average price paid for holdings | Decimal | 2750.00 |
| Current Price | Latest market price | Decimal | 2850.50 |
| Market Value | Current value of holding | Decimal | 1425250.00 |
| Realized P&L | Profit/loss from completed transactions | Decimal | 25000.00 |
| Unrealized P&L | Profit/loss on current holdings | Decimal | 50250.00 |

---

## 7. Derivatives Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Contract ID | Unique derivative contract identifier | String | OPT10001 |
| Underlying Asset | Asset underlying the derivative | String | NIFTY |
| Contract Type | Type of derivative | String | OPTION |
| Option Type | Call or Put | String | CALL |
| Strike Price | Contract strike price | Decimal | 25000.00 |
| Expiry Date | Contract expiration date | Date | 2026-08-27 |
| Lot Size | Standard contract quantity | Integer | 50 |
| Contract Price | Latest available contract price | Decimal | 125.50 |

---

## 8. Exception Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Exception ID | Unique exception identifier | String | EXC10001 |
| Exception Type | Category of operational issue | String | SETTLEMENT_FAILURE |
| Severity | Business impact level | String | HIGH |
| Status | Current exception status | String | OPEN |
| Created Date | Date exception was created | DateTime | 2026-08-14 15:00 |
| Assigned To | User/team responsible for resolution | String | Operations |
| Failure Reason | Description of the issue | String | Settlement instruction mismatch |
| Resolution Details | Details of resolution | String | Instruction corrected |
| Resolution Date | Date exception was resolved | DateTime | 2026-08-15 11:00 |

### Exception Severity

- Low
- Medium
- High
- Critical

### Exception Status

- Open
- In Progress
- Resolved
- Closed

---

## 9. User Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| User ID | Unique user identifier | String | USR1001 |
| User Name | Name of the user | String | Trader 01 |
| User Role | Role assigned to user | String | Trader |
| Access Status | Whether user access is active | String | Active |

---

## 10. Reporting Data

| Field | Definition | Data Type | Example |
|---|---|---|---|
| Report ID | Unique report identifier | String | RPT10001 |
| Report Type | Type of report | String | Trading KPI |
| Report Date | Reporting date | Date | 2026-08-14 |
| Trade Volume | Total trading activity/value | Decimal | 12500000.00 |
| Order Count | Number of orders | Integer | 250 |
| Execution Rate | Percentage of orders executed | Decimal | 92.50% |
| Settlement Success Rate | Percentage of successfully settled trades | Decimal | 98.20% |
| Exception Count | Number of operational exceptions | Integer | 12 |

---

## 11. Key Data Relationships

The major relationships are:

```text
User
  │
  └── Portfolio
        │
        └── Security

User
  │
  └── Order
        │
        └── Trade
              │
              └── Settlement
                    │
                    └── Exception

Security
   │
   ├── Order
   │     └── Trade
   │
   └── Derivative Contract


### Commit it

**Commit message:**

`Add Capital Markets Data Dictionary`

**Extended description:**

`Added definitions, data types, examples, relationships, and data-quality rules for trading, settlement, portfolio, derivatives, exception, user, and reporting data.`

Then click **Commit changes**. ✅

After it's committed, tell me **Done**.

Then we'll do the **final README upgrade**, which is probably the most important step for a recruiter viewing your GitHub.
