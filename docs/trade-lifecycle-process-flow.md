# Trade Lifecycle Process Flow

## 1. Overview

This document describes the end-to-end lifecycle of an equity trade, from order capture through execution, settlement, exception management, and reporting.

---

## 2. End-to-End Process Flow

```text
                    ┌─────────────────────┐
                    │   Client / Trader   │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │    Order Capture     │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │   Order Validation  │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │  Risk & Limit Check │
                    └──────────┬──────────┘
                               │
                    ┌──────────┴──────────┐
                    │                     │
                 Failed                 Passed
                    │                     │
                    ▼                     ▼
             ┌──────────────┐    ┌─────────────────┐
             │Order Rejected│    │ Order Submitted │
             └──────────────┘    └────────┬────────┘
                                          │
                                          ▼
                                 ┌─────────────────┐
                                 │    Execution     │
                                 └────────┬────────┘
                                          │
                                          ▼
                                 ┌─────────────────┐
                                 │ Trade Confirmed │
                                 └────────┬────────┘
                                          │
                                          ▼
                                 ┌─────────────────┐
                                 │    Settlement    │
                                 └────────┬────────┘
                                          │
                              ┌───────────┴───────────┐
                              │                       │
                           Success                  Failed
                              │                       │
                              ▼                       ▼
                     ┌────────────────┐     ┌──────────────────┐
                     │ Trade Complete │     │Exception Created │
                     └───────┬────────┘     └────────┬─────────┘
                             │                       │
                             │                       ▼
                             │              ┌──────────────────┐
                             │              │Exception Review  │
                             │              └────────┬─────────┘
                             │                       │
                             │                       ▼
                             │              ┌──────────────────┐
                             │              │Exception Resolved│
                             │              └────────┬─────────┘
                             │                       │
                             └───────────┬───────────┘
                                         │
                                         ▼
                              ┌────────────────────┐
                              │ Reporting & Analytics│
                              └────────────────────┘
```

---

## 3. Process Steps

### Step 1 – Order Capture

The trader or client submits an order containing required information such as security, buy/sell instruction, quantity, order type, and price where applicable.

### Step 2 – Order Validation

The system validates mandatory fields, security details, quantity, order type, and applicable trading rules.

### Step 3 – Risk & Limit Check

The order is evaluated against configured trading limits, exposure limits, quantity limits, and applicable risk rules.

### Step 4 – Order Submission

Orders that pass validation and risk checks are submitted for execution.

### Step 5 – Execution

The order may be fully executed, partially executed, rejected, or remain open depending on the applicable trading conditions.

### Step 6 – Trade Confirmation

For executed orders, the system records the trade and generates the relevant trade confirmation information.

### Step 7 – Settlement

The executed trade moves into the settlement process. Settlement status is monitored until completion or failure.

### Step 8 – Exception Management

If settlement or another operational process fails, an exception is created. The exception is categorized, assigned a severity, investigated, and resolved.

### Step 9 – Reporting & Analytics

Trading, settlement, exception, and portfolio information is made available through dashboards and reports for operational and management decision-making.

---

## 4. Key Business Controls

* Mandatory order validation
* Risk and trading-limit validation
* Order and trade identification
* Settlement status monitoring
* Exception severity and status tracking
* Auditability of key lifecycle events
* Reconciliation of reporting data with source records

---

## 5. Key Exceptions

| Exception               | Example Handling                                   |
| ----------------------- | -------------------------------------------------- |
| Invalid Order           | Reject order and display validation reason         |
| Risk Limit Breach       | Reject or hold order according to configured rules |
| Insufficient Holdings   | Prevent sell order submission                      |
| Order Rejection         | Record rejection reason                            |
| Settlement Failure      | Create operational exception                       |
| Market Data Unavailable | Display appropriate data-unavailable message       |
| Processing Failure      | Record error and initiate operational handling     |

---

## 6. Business Analyst Perspective

From a Business Analyst perspective, the process identifies:

* Actors and responsibilities
* Business process stages
* Functional requirements
* Business rules
* Decision points
* Exceptions
* Data requirements
* Controls
* Reporting requirements

The process flow provides the foundation for defining user stories, functional requirements, test scenarios, and traceability.

---

## 7. Related Documents

* `BRD.md` – Business Requirements Document
* `FRD.md` – Functional Requirements Document
* `01_User_Stories_Acceptance_Criteria.md` – User Stories and Acceptance Criteria
