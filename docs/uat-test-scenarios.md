# UAT & Test Scenarios – Equity Trading Platform

## 1. Purpose

This document defines User Acceptance Testing (UAT) and high-level test scenarios for the Equity Trading & Trade Lifecycle Management platform.

The objective is to validate that the solution meets the documented business requirements and supports the expected end-to-end trading lifecycle.

---

## 2. Testing Approach

Testing will focus on:

- Business process validation
- Functional requirement validation
- User story acceptance criteria
- Order lifecycle validation
- Trade lifecycle validation
- Settlement monitoring
- Exception handling
- Risk and limit validation
- Portfolio and P&L validation
- Reporting and dashboard validation

---

## 3. UAT Entry Criteria

UAT can begin when:

- Required functionality is available for testing.
- Test data is available.
- User access has been configured.
- Business requirements are approved for testing.
- Functional requirements are available.
- Major system defects have been resolved.

---

## 4. UAT Exit Criteria

UAT can be considered complete when:

- Critical business scenarios have been successfully tested.
- Acceptance criteria have been validated.
- No critical or high-severity unresolved defects remain.
- Business stakeholders approve the solution.
- UAT results have been documented.

---

# 5. Test Scenarios

## TS-001 – Search Equity

**Requirement:** FR-001  
**User Story:** US-001  
**Use Case:** UC-001

### Scenario

Verify that an authorized user can search for a supported equity.

### Test Steps

1. Log in as an authorized user.
2. Open the equity search screen.
3. Enter a valid stock symbol.
4. Submit the search.
5. Select the required security.

### Expected Result

The system displays the matching security and available market information.

**Priority:** High

---

## TS-002 – Buy Order Placement

**Requirement:** FR-002  
**User Story:** US-002  
**Use Case:** UC-002

### Scenario

Verify that an authorized trader can successfully place a valid buy order.

### Test Steps

1. Select a valid equity.
2. Select Buy.
3. Enter a valid quantity.
4. Select the required order type.
5. Enter price where applicable.
6. Submit the order.

### Expected Result

The system validates the order, performs applicable risk checks, and creates a unique order ID.

**Priority:** Critical

---

## TS-003 – Sell Order Placement

**Requirement:** FR-003  
**User Story:** US-003  
**Use Case:** UC-003

### Scenario

Verify that an authorized trader can place a valid sell order when sufficient holdings are available.

### Expected Result

The system validates the holdings and successfully submits the sell order.

**Priority:** Critical

---

## TS-004 – Order Status Tracking

**Requirement:** FR-004  
**User Story:** US-004  
**Use Case:** UC-004

### Scenario

Verify that a trader can view the current status of a submitted order.

### Expected Result

The system displays the latest applicable order status.

**Priority:** High

---

## TS-005 – Order Cancellation

**Requirement:** FR-005  
**User Story:** US-005  
**Use Case:** UC-005

### Scenario

Verify that an eligible open order can be cancelled.

### Expected Result

The system processes the cancellation and updates the order status to Cancelled.

**Priority:** High

---

## TS-006 – Portfolio View

**Requirement:** FR-006  
**User Story:** US-006  
**Use Case:** UC-006

### Scenario

Verify that an authorized investor can view current portfolio holdings.

### Expected Result

The system displays holdings, quantities, average purchase price, current value, and applicable portfolio information.

**Priority:** High

---

## TS-007 – Profit & Loss Calculation

**Requirement:** FR-007  
**User Story:** US-007  
**Use Case:** UC-007

### Scenario

Verify that portfolio P&L is calculated according to the configured business methodology.

### Expected Result

The system displays applicable realized and unrealized P&L based on the available data.

**Priority:** High

---

## TS-008 – Trade Confirmation

**Requirement:** FR-008  
**User Story:** US-008

### Scenario

Verify that an executed order generates appropriate trade confirmation information.

### Expected Result

The executed trade is recorded with relevant trade details and linked to the originating order.

**Priority:** High

---

## TS-009 – Transaction History

**Requirement:** FR-009  
**User Story:** US-009

### Scenario

Verify that an authorized user can view historical transactions.

### Expected Result

The system displays applicable historical transactions with relevant details.

**Priority:** Medium

---

## TS-010 – Risk Limit Validation

**Requirement:** FR-010  
**User Story:** US-010

### Scenario

Verify that an order exceeding a configured risk or trading limit is appropriately handled.

### Expected Result

The system prevents or handles the order according to configured risk rules and provides an appropriate reason.

**Priority:** Critical

---

## TS-011 – Futures Order Validation

**Requirement:** FR-011  
**User Story:** US-011  
**Use Case:** UC-008

### Scenario

Verify that a valid futures order complies with contract and lot-size requirements.

### Expected Result

The system validates the contract and applicable rules before submitting the order.

**Priority:** High

---

## TS-012 – Options Order Validation

**Requirement:** FR-012  
**User Story:** US-012  
**Use Case:** UC-009

### Scenario

Verify that a valid Call or Put options order can be created and submitted.

### Expected Result

The system validates the options contract, expiry, quantity, and applicable risk rules.

**Priority:** High

---

## TS-013 – Options Contract Information

**Requirement:** FR-013  
**User Story:** US-013  
**Use Case:** UC-009

### Scenario

Verify that the required options contract information is displayed.

### Expected Result

The system displays underlying asset, Call/Put type, strike price, expiry date, and contract size.

**Priority:** Medium

---

## TS-014 – Trade Notifications

**Requirement:** FR-014  
**User Story:** US-014

### Scenario

Verify that configured notifications are generated for important order and trade events.

### Expected Result

The user receives the applicable notification for submission, execution, rejection, or cancellation.

**Priority:** Medium

---

## TS-015 – Trading Dashboard & Reporting

**Requirement:** FR-015  
**User Story:** US-015

### Scenario

Verify that the trading dashboard displays relevant trading and portfolio information.

### Expected Result

The dashboard displays applicable trading activity, portfolio metrics, P&L, and reporting information.

**Priority:** High

---

# 6. Settlement Test Scenarios

## TS-016 – Successful Settlement

**Scenario:** Verify that an executed trade can move to a successful settlement status.

**Expected Result:** Settlement status is updated to Settled.

**Priority:** Critical

---

## TS-017 – Settlement Failure

**Scenario:** Verify that a failed settlement is identified and recorded.

**Expected Result:** Settlement status becomes Failed and an appropriate failure reason is captured.

**Priority:** Critical

---

# 7. Exception Management Test Scenarios

## TS-018 – Exception Creation

**Scenario:** Verify that an operational issue can generate an exception.

**Expected Result:** Exception is created with an appropriate type, severity, and status.

**Priority:** High

---

## TS-019 – Exception Resolution

**Scenario:** Verify that an authorized operations user can update and resolve an exception.

**Expected Result:** Resolution information is recorded and exception status is updated.

**Priority:** High

---

# 8. Negative Test Scenarios

| Test ID | Scenario | Expected Result |
|---|---|---|
| NT-001 | Invalid security | Order should not be submitted |
| NT-002 | Invalid quantity | Validation message displayed |
| NT-003 | Insufficient holdings | Sell order prevented |
| NT-004 | Risk limit exceeded | Order rejected/blocked |
| NT-005 | Expired derivative contract | Order prevented |
| NT-006 | Invalid order type | Validation message displayed |
| NT-007 | Settlement failure | Exception created |
| NT-008 | Unauthorized user | Access denied |

---

# 9. UAT Result Template

| Test ID | Result | Defect ID | Comments |
|---|---|---|---|
| TS-001 | Not Executed | - | - |
| TS-002 | Not Executed | - | - |
| TS-003 | Not Executed | - | - |
| TS-004 | Not Executed | - | - |
| TS-005 | Not Executed | - | - |
| TS-006 | Not Executed | - | - |
| TS-007 | Not Executed | - | - |
| TS-008 | Not Executed | - | - |
| TS-009 | Not Executed | - | - |
| TS-010 | Not Executed | - | - |
| TS-011 | Not Executed | - | - |
| TS-012 | Not Executed | - | - |
| TS-013 | Not Executed | - | - |
| TS-014 | Not Executed | - | - |
| TS-015 | Not Executed | - | - |
| TS-016 | Not Executed | - | - |
| TS-017 | Not Executed | - | - |
| TS-018 | Not Executed | - | - |
| TS-019 | Not Executed | - | - |

---

# 10. UAT Sign-Off

**Business Owner:** ____________________

**Business Analyst:** ____________________

**Operations Representative:** ____________________

**Date:** ____________________

**UAT Status:** Pending

---

## 11. Business Analyst Perspective

This UAT document demonstrates how documented requirements can be translated into business-focused validation scenarios.

The scenarios provide traceability from requirements through user stories and use cases to validation, supporting a structured requirements-to-testing lifecycle.
