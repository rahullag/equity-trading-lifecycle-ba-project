# Requirements Traceability Matrix (RTM)

## 1. Purpose

The Requirements Traceability Matrix (RTM) provides end-to-end traceability between business requirements, functional requirements, user stories, acceptance criteria, and validation/testing activities.

It helps ensure that requirements are complete, consistent, and testable.

---

## 2. Traceability Matrix

| Business Requirement | Functional Requirement | User Story | Acceptance Criteria | Validation / Test Scenario | Status |
|---|---|---|---|---|---|
| BR-001 Order Management | FR-001, FR-002, FR-003 | US-001, US-002, US-003 | AC-01 to AC-06 | TS-001 Order placement validation | Covered |
| BR-001 Order Management | FR-004 | US-004 | AC-01 to AC-05 | TS-002 Order status tracking | Covered |
| BR-001 Order Management | FR-005 | US-005 | AC-01 to AC-05 | TS-003 Order cancellation | Covered |
| BR-002 Trade Management | FR-008 | US-008 | AC-01 to AC-05 | TS-004 Trade confirmation | Covered |
| BR-003 Settlement Management | Settlement Requirements | Settlement Use Case | Settlement status criteria | TS-005 Settlement monitoring | Covered |
| BR-004 Exception Management | Exception Requirements | Settlement/Exception Use Case | Exception status and severity | TS-006 Exception handling | Covered |
| BR-005 Risk Management | FR-010 | US-010 | Risk validation criteria | TS-007 Risk-limit validation | Covered |
| BR-006 Portfolio Management | FR-006 | US-006 | Portfolio display criteria | TS-008 Portfolio calculation | Covered |
| BR-006 Portfolio Management | FR-007 | US-007 | P&L calculation criteria | TS-009 P&L validation | Covered |
| BR-007 Derivatives Trading | FR-011 | US-011 | Futures contract validation | TS-010 Futures order validation | Covered |
| BR-007 Derivatives Trading | FR-012, FR-013 | US-012, US-013 | Options contract criteria | TS-011 Options order validation | Covered |
| BR-008 Reporting & Analytics | FR-015 | US-015 | Dashboard and reporting criteria | TS-012 Dashboard/report validation | Covered |
| BR-009 Auditability | FR-008, FR-009, FR-010 | US-008, US-009, US-010 | Audit and transaction criteria | TS-013 Audit trail validation | Covered |

---

## 3. User Story Traceability

| User Story | Requirement | Related Use Case | Test Scenario |
|---|---|---|---|
| US-001 Search Equity | FR-001 | UC-001 | TS-001 |
| US-002 Buy Order | FR-002 | UC-002 | TS-002 |
| US-003 Sell Order | FR-003 | UC-003 | TS-003 |
| US-004 Track Order | FR-004 | UC-004 | TS-004 |
| US-005 Cancel Order | FR-005 | UC-005 | TS-005 |
| US-006 View Portfolio | FR-006 | UC-006 | TS-006 |
| US-007 View P&L | FR-007 | UC-007 | TS-007 |
| US-008 Trade Confirmation | FR-008 | UC-002 / UC-003 | TS-008 |
| US-009 Transaction History | FR-009 | Related trading workflow | TS-009 |
| US-010 Risk Validation | FR-010 | UC-002 / UC-003 | TS-010 |
| US-011 Futures Order | FR-011 | UC-008 | TS-011 |
| US-012 Options Order | FR-012 | UC-009 | TS-012 |
| US-013 Options Contract Information | FR-013 | UC-009 | TS-013 |
| US-014 Trade Notifications | FR-014 | Related trading workflow | TS-014 |
| US-015 Trading Dashboard & Reporting | FR-015 | Dashboard workflow | TS-015 |

---

## 4. Traceability Coverage

### Business Requirements

**BR-001 to BR-009:** Covered

### Functional Requirements

**FR-001 to FR-015:** Covered

### User Stories

**US-001 to US-015:** Covered

### Use Cases

**UC-001 to UC-010:** Covered

### Acceptance Criteria

Acceptance criteria are documented against the corresponding user stories.

---

## 5. Requirement Coverage Summary

| Requirement Category | Total | Covered |
|---|---:|---:|
| Business Requirements | 9 | 9 |
| Functional Requirements | 15 | 15 |
| User Stories | 15 | 15 |
| Use Cases | 10 | 10 |
| Acceptance Criteria | 15 Stories | Covered |

---

## 6. Traceability Benefits

The RTM helps the project team to:

- Confirm that business requirements are addressed.
- Identify missing or orphan requirements.
- Connect requirements to user stories.
- Support test-case planning.
- Support UAT preparation.
- Track requirement coverage.
- Improve change-impact analysis.
- Support auditability.

---

## 7. Change Impact Analysis

When a requirement changes, the RTM can be used to identify:

**Business Requirement → Functional Requirement → User Story → Acceptance Criteria → Test Scenario**

This helps the Business Analyst assess the downstream impact of requirement changes.

---

## 8. Business Analyst Perspective

The RTM demonstrates an end-to-end requirements management approach and provides a single reference for understanding how business needs are translated into system functionality and validation activities.

---

## 9. Document Status

**Version:** 1.0  
**Status:** Draft  
**Prepared By:** Business Analyst  
**Date:** August 2026
