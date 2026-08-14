# Functional Requirements Document

## 1. Purpose

Define the functional requirements for the Equity Trading & Trade Lifecycle Management system.

## 2. Functional Areas

### Order Management
- Capture client orders.
- Validate order details.
- Record buy/sell instructions.
- Maintain order status.
- Link orders to executed trades.

### Trade Management
- Record executed trades.
- Capture security, quantity, price and trade value.
- Maintain trade lifecycle information.
- Link trades to settlement records.

### Settlement Management
- Track settlement status.
- Identify settled, pending and failed settlements.
- Capture settlement failure reasons.
- Provide settlement monitoring.

### Exception Management
- Create exceptions for operational issues.
- Categorize exceptions by type and severity.
- Track exception status.
- Record resolution information.

### Reporting & Analytics
- Provide trading KPIs.
- Monitor settlement performance.
- Monitor operational exceptions.
- Support management decision-making.

## 3. Business Rules

1. Each trade must be linked to an order.
2. Each settlement must be linked to a trade.
3. Operational exceptions must have a status and severity.
4. Settlement failures should capture a failure reason.
5. Dashboard metrics should reconcile with source data.

## 4. Non-Functional Requirements

- Data should be accurate and consistent.
- Reports should be easy to understand.
- User access should follow appropriate permissions.
- Dashboard information should support timely operational decisions.

  ---

## 5. Additional Functional Requirements

### FR-001 – Equity Search & Market Data

The system shall allow authorized users to search for supported equities using a stock symbol or company name and view the latest available market information.

### FR-002 – Buy Order Placement

The system shall allow authorized traders to create and submit equity buy orders after validating mandatory fields and applicable trading rules.

### FR-003 – Sell Order Placement

The system shall allow authorized traders to create and submit equity sell orders after validating quantity, holdings, and applicable trading rules.

### FR-004 – Order Status Tracking

The system shall display the current status of submitted orders, including Pending, Open, Partially Executed, Executed, Rejected, and Cancelled where applicable.

### FR-005 – Order Cancellation

The system shall allow authorized traders to request cancellation of eligible open orders.

### FR-006 – Portfolio View

The system shall display user holdings, quantity, average purchase price, current market price, and portfolio value.

### FR-007 – Profit & Loss

The system shall calculate and display applicable realized and unrealized profit or loss.

### FR-008 – Trade Confirmation

The system shall generate trade confirmation information for successfully executed trades.

### FR-009 – Transaction History

The system shall allow authorized users to view and filter historical trading transactions.

### FR-010 – Risk & Limit Validation

The system shall validate orders against configured quantity, exposure, trading, and risk limits before execution.

### FR-011 – Futures Order Placement

The system shall support futures order creation and validation based on contract, expiry, lot-size, margin, and risk requirements.

### FR-012 – Options Order Placement

The system shall support options order creation for valid Call and Put contracts.

### FR-013 – Options Contract Information

The system shall display relevant options contract information including underlying asset, strike price, option type, expiry date, and contract size.

### FR-014 – Trade Notifications

The system shall provide configured notifications for important order and trade events such as submission, execution, rejection, and cancellation.

### FR-015 – Trading Dashboard & Reporting

The system shall provide a consolidated dashboard containing relevant trading activity, portfolio performance, P&L, and operational metrics.

---

## 6. Order Lifecycle

The expected order lifecycle is:

**Order Created → Validation → Risk Check → Submitted → Open → Partially Executed / Executed / Rejected → Cancelled where applicable**

The system should maintain appropriate records and status information throughout the order lifecycle.

---

## 7. User Roles

### Trader

* Search securities
* View market information
* Place buy and sell orders
* Place futures and options orders
* Track order status
* Cancel eligible orders
* View trade confirmations

### Investor

* View portfolio holdings
* View portfolio value
* Monitor P&L
* View transaction history
* Access applicable reports

### Risk Analyst

* Monitor risk limits
* Review rejected orders
* Monitor exposure
* Review risk validation results

### Operations User

* Monitor trade processing
* Monitor settlement status
* Review operational exceptions
* Track resolution of exceptions

---

## 8. Data Requirements

### Security

* Security ID
* Symbol
* Security Name
* Exchange
* Security Type
* Current Price

### Order

* Order ID
* User ID
* Security ID
* Buy/Sell
* Order Type
* Quantity
* Price
* Order Status
* Order Date/Time

### Trade

* Trade ID
* Order ID
* Security ID
* Executed Quantity
* Execution Price
* Trade Date/Time

### Settlement

* Settlement ID
* Trade ID
* Settlement Date
* Settlement Status
* Failure Reason

### Exception

* Exception ID
* Exception Type
* Severity
* Status
* Created Date
* Resolution Details

### Portfolio

* User ID
* Security ID
* Quantity
* Average Purchase Price
* Current Price
* Market Value
* Realized P&L
* Unrealized P&L

---

## 9. Exception Handling

The system should provide appropriate handling for:

* Invalid security
* Invalid quantity
* Insufficient holdings
* Risk-limit breach
* Invalid derivative contract
* Expired contract
* Order rejection
* Order cancellation failure
* Settlement failure
* Market-data unavailability
* System processing failure

Each operational exception should have an appropriate status, severity, and resolution record.

---

## 10. Traceability

| Functional Requirement | User Story |
| ---------------------- | ---------- |
| FR-001                 | US-001     |
| FR-002                 | US-002     |
| FR-003                 | US-003     |
| FR-004                 | US-004     |
| FR-005                 | US-005     |
| FR-006                 | US-006     |
| FR-007                 | US-007     |
| FR-008                 | US-008     |
| FR-009                 | US-009     |
| FR-010                 | US-010     |
| FR-011                 | US-011     |
| FR-012                 | US-012     |
| FR-013                 | US-013     |
| FR-014                 | US-014     |
| FR-015                 | US-015     |

---

## 11. Assumptions & Dependencies

### Assumptions

* Market data is available from a configured source.
* Users have appropriate permissions.
* Risk limits are configured by authorized users.
* Exchange and settlement integrations are outside the scope of this portfolio prototype.

### Dependencies

* Market-data source
* Order Management System
* Trade Management System
* Risk Management rules
* Settlement data
* User authentication and authorization
* Derivatives contract reference data

---

## 12. Document Status

**Version:** 1.0
**Status:** Draft
**Prepared By:** Business Analyst
**Last Updated:** August 2026

