# Use Case Document – Equity Trading Platform

## 1. Overview

This document defines the key use cases for the Equity Trading & Trade Lifecycle Management platform.

The use cases describe how users interact with the system to perform trading, portfolio, risk, settlement, and reporting activities.

---

## 2. Actors

| Actor           | Description                                                       |
| --------------- | ----------------------------------------------------------------- |
| Trader          | Places and manages equity and derivative orders                   |
| Investor        | Monitors portfolio, P&L, and transaction history                  |
| Risk Analyst    | Monitors risk limits and exposure                                 |
| Operations User | Monitors trade, settlement, and exceptions                        |
| System          | Performs validations, calculations, processing, and notifications |

---

# 3. Use Case UC-001 – Search Equity

**Primary Actor:** Trader

**Goal:** Find an equity and view its market information.

### Preconditions

* User is authenticated.
* User has access to market-data functionality.

### Main Flow

1. Trader opens the equity search screen.
2. Trader enters a stock symbol or company name.
3. System searches supported securities.
4. System displays matching securities.
5. Trader selects an equity.
6. System displays available market information.

### Alternate Flow

If multiple securities match the search, the system displays all relevant results for selection.

### Exception Flow

If market data is unavailable, the system displays an appropriate message.

### Postcondition

The selected equity information is displayed to the trader.

---

# 4. Use Case UC-002 – Place Buy Order

**Primary Actor:** Trader

**Goal:** Purchase an equity by submitting a buy order.

### Preconditions

* Trader is authenticated.
* Equity is available for trading.
* Required order information is available.

### Main Flow

1. Trader selects an equity.
2. Trader selects Buy.
3. Trader enters quantity.
4. Trader selects the order type.
5. Trader enters price where applicable.
6. System validates the order.
7. System performs applicable risk and limit checks.
8. Trader confirms the order.
9. System submits the order.
10. System generates an order ID.

### Alternate Flow

If the order fails validation, the system displays the validation reason and does not submit the order.

### Exception Flow

If order submission fails due to a system or processing issue, the system records the failure and displays an appropriate message.

### Postcondition

A valid order is submitted and assigned a unique order ID.

---

# 5. Use Case UC-003 – Place Sell Order

**Primary Actor:** Trader

**Goal:** Sell an equity holding.

### Preconditions

* Trader is authenticated.
* Equity is available for trading.
* Trader has sufficient eligible holdings.

### Main Flow

1. Trader selects an equity.
2. Trader selects Sell.
3. Trader enters quantity.
4. System validates available holdings.
5. Trader selects the order type.
6. Trader enters price where applicable.
7. System performs order and risk validation.
8. Trader confirms the order.
9. System submits the order.
10. System generates an order ID.

### Alternate Flow

If the trader does not have sufficient eligible holdings, the system prevents order submission.

### Postcondition

A valid sell order is submitted.

---

# 6. Use Case UC-004 – Track Order

**Primary Actor:** Trader

**Goal:** Monitor the current status of submitted orders.

### Preconditions

* Trader has submitted at least one order.

### Main Flow

1. Trader opens the order book.
2. System retrieves the trader's orders.
3. System displays order details.
4. Trader selects an order.
5. System displays the latest available status.

### Possible Statuses

* Pending
* Open
* Partially Executed
* Executed
* Rejected
* Cancelled

### Postcondition

Trader can monitor the order lifecycle.

---

# 7. Use Case UC-005 – Cancel Order

**Primary Actor:** Trader

**Goal:** Cancel an eligible open order.

### Preconditions

* Trader has an open order.
* Order is eligible for cancellation.

### Main Flow

1. Trader opens the order book.
2. Trader selects an eligible order.
3. Trader selects Cancel.
4. System displays a confirmation request.
5. Trader confirms cancellation.
6. System processes the cancellation.
7. System updates the order status.

### Alternate Flow

If the order is no longer eligible for cancellation, the system prevents cancellation and displays the applicable message.

### Postcondition

The order is cancelled if the cancellation request is successfully processed.

---

# 8. Use Case UC-006 – View Portfolio

**Primary Actor:** Investor

**Goal:** View current holdings and portfolio value.

### Preconditions

* Investor is authenticated.
* Investor has access to portfolio information.

### Main Flow

1. Investor opens the portfolio.
2. System retrieves current holdings.
3. System displays security details.
4. System displays quantities and average purchase prices.
5. System retrieves applicable market prices.
6. System calculates portfolio value.
7. System displays portfolio information.

### Postcondition

Investor can view the current portfolio position.

---

# 9. Use Case UC-007 – View Profit & Loss

**Primary Actor:** Investor

**Goal:** Monitor investment performance.

### Preconditions

* Portfolio information is available.

### Main Flow

1. Investor opens the portfolio.
2. System retrieves holding information.
3. System retrieves applicable market prices.
4. System calculates unrealized P&L.
5. System retrieves completed sell transactions.
6. System calculates realized P&L according to the configured methodology.
7. System displays P&L information.

### Postcondition

Investor can view applicable realized and unrealized P&L.

---

# 10. Use Case UC-008 – Place Futures Order

**Primary Actor:** Trader

**Goal:** Place an order for a valid futures contract.

### Preconditions

* Trader is authorized for derivatives trading.
* Futures contract is valid and active.

### Main Flow

1. Trader searches for a futures contract.
2. System displays contract details.
3. Trader selects the contract.
4. Trader enters buy/sell side and quantity.
5. System validates contract and lot size.
6. System performs margin and risk validation.
7. Trader confirms the order.
8. System submits the order.
9. System generates an order ID.

### Exception Flow

If the contract is expired or invalid, the system prevents order submission.

---

# 11. Use Case UC-009 – Place Options Order

**Primary Actor:** Trader

**Goal:** Place an order for a Call or Put option.

### Preconditions

* Trader is authorized for derivatives trading.
* Options contract is valid and active.

### Main Flow

1. Trader searches for an options contract.
2. System displays available contracts.
3. Trader selects Call or Put contract.
4. System displays strike price and expiry.
5. Trader enters order details.
6. System validates contract and lot size.
7. System performs applicable risk validation.
8. Trader confirms the order.
9. System submits the order.

### Exception Flow

If the options contract is expired or invalid, the system prevents order submission.

---

# 12. Use Case UC-010 – Monitor Settlement & Exceptions

**Primary Actor:** Operations User

**Goal:** Monitor settlement status and manage operational exceptions.

### Preconditions

* Executed trade exists.
* Settlement information is available.

### Main Flow

1. Operations user opens the settlement monitoring screen.
2. System displays settlement records.
3. User reviews settlement status.
4. System identifies failed settlements.
5. System creates or displays the related exception.
6. User reviews exception severity and reason.
7. User investigates the issue.
8. User records the resolution.
9. System updates the exception status.

### Possible Settlement Statuses

* Pending
* Settled
* Failed

### Postcondition

Settlement and related exceptions are monitored and appropriately tracked.

---

# 13. Use Case Relationships

| Use Case                               | Related User Story                  |
| -------------------------------------- | ----------------------------------- |
| UC-001 Search Equity                   | US-001                              |
| UC-002 Place Buy Order                 | US-002                              |
| UC-003 Place Sell Order                | US-003                              |
| UC-004 Track Order                     | US-004                              |
| UC-005 Cancel Order                    | US-005                              |
| UC-006 View Portfolio                  | US-006                              |
| UC-007 View P&L                        | US-007                              |
| UC-008 Place Futures Order             | US-011                              |
| UC-009 Place Options Order             | US-012                              |
| UC-010 Monitor Settlement & Exceptions | Settlement / Exception Requirements |

---

# 14. Business Analyst Value

These use cases provide a structured view of:

* Actors
* User-system interactions
* Preconditions
* Main flows
* Alternate flows
* Exception handling
* Postconditions
* Business requirements
* Functional requirements
* User-story traceability

They can also be used as a foundation for test-case design and UAT scenarios.
