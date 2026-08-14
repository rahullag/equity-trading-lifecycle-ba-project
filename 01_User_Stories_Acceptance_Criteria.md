User Story 1 – Equity Search & Market Data

Story ID: US-001
Epic: Market Data & Equity Trading
Priority: High

User Story

As a Trader, I want to search for an equity and view its latest market information, so that I can evaluate the security before making a trading decision.

Acceptance Criteria

AC-01 – Equity Search

Given the trader is on the equity trading screen,
when the trader enters a valid stock symbol or company name,
then the system should display the matching equity.

AC-02 – Market Price

Given an equity has been selected,
when market data is available,
then the system should display the latest traded price.

AC-03 – Price Change

Given an equity has been selected,
when market data is available,
then the system should display the price change and percentage change.

AC-04 – Market Data Unavailable

Given the selected equity does not have available market data,
when the trader attempts to view the equity,
then the system should display an appropriate "Market Data Unavailable" message.

AC-05 – Invalid Search

Given the trader enters an invalid or unavailable stock symbol,
when the trader performs the search,
then the system should display an appropriate message and should not return incorrect equity information.

Business Rules

- Stock symbols must be unique within the supported exchange.
- Market price must come from the configured market-data source.
- The system must not display stale data as real-time data.
- Only supported securities should be available for trading.

Expected Business Value

This functionality enables traders to quickly identify securities and access reliable market information before placing an order.

User Story 2 – Buy Order Placement

Story ID: US-002
Epic: Order Management
Priority: High

User Story

As a Trader, I want to place a buy order for an equity, so that I can purchase shares at my desired price and quantity.

Acceptance Criteria

AC-01 – Enter Order Details

Given the trader has selected an equity,
when the trader enters order details,
then the system should allow the trader to enter quantity, order type, and price where applicable.

AC-02 – Mandatory Fields

Given the trader is placing a buy order,
when any mandatory field is missing,
then the system should prevent order submission and display an appropriate validation message.

AC-03 – Valid Quantity

Given the trader enters an order quantity,
when the quantity is greater than zero and meets the applicable lot-size rules,
then the system should allow the order to proceed for validation.

AC-04 – Order Validation

Given all required order details have been entered,
when the trader submits the buy order,
then the system should validate the order against applicable trading rules and limits.

AC-05 – Successful Submission

Given the order passes all validations,
when the trader confirms the order,
then the system should submit the order and generate a unique order ID.

AC-06 – Failed Submission

Given the order fails validation or cannot be submitted,
when the trader confirms the order,
then the system should reject the order and display the reason for rejection.

Business Rules

- Quantity must be greater than zero.
- Mandatory order fields must be completed before submission.
- Orders must pass applicable risk and trading validations.
- Every successfully submitted order must have a unique order ID.

Expected Business Value

This functionality enables traders to efficiently place equity buy orders while ensuring that orders comply with defined trading and risk rules.

User Story 3 – Sell Order Placement

Story ID: US-003
Epic: Order Management
Priority: High

User Story

As a Trader, I want to place a sell order for an equity, so that I can sell my holdings at my desired price and quantity.

Acceptance Criteria

AC-01 – Enter Sell Order Details

Given the trader has selected an equity,
when the trader enters the sell order details,
then the system should allow the trader to enter quantity, order type, and price where applicable.

AC-02 – Validate Holdings

Given the trader wants to sell an equity,
when the trader enters the quantity,
then the system should verify that the trader has sufficient eligible holdings to sell.

AC-03 – Mandatory Fields

Given the trader is placing a sell order,
when any mandatory field is missing,
then the system should prevent order submission and display an appropriate validation message.

AC-04 – Order Validation

Given all required order details have been entered,
when the trader submits the sell order,
then the system should validate the order against applicable trading and risk rules.

AC-05 – Successful Submission

Given the sell order passes all validations,
when the trader confirms the order,
then the system should submit the order and generate a unique order ID.

AC-06 – Failed Submission

Given the order fails validation or cannot be submitted,
when the trader confirms the order,
then the system should reject the order and display the reason for rejection.

Business Rules

- The sell quantity must be greater than zero.
- The trader must have sufficient eligible holdings to sell.
- Mandatory order fields must be completed before submission.
- Orders must pass applicable trading and risk validations.
- Every successfully submitted order must have a unique order ID.

Expected Business Value

This functionality enables traders to sell equity holdings efficiently while ensuring that orders comply with holding, trading, and risk validation rules.

User Story 4 – Order Status Tracking

Story ID: US-004
Epic: Order Management
Priority: High

User Story

As a Trader, I want to view the current status of my orders, so that I can track whether my orders are pending, executed, rejected, or cancelled.

Acceptance Criteria

AC-01 – View Order Status

Given the trader has submitted an order,
when the trader opens the order book,
then the system should display the current status of the order.

AC-02 – Status Values

Given an order exists in the system,
when the trader views the order status,
then the system should display an appropriate status such as Pending, Open, Executed, Rejected, or Cancelled.

AC-03 – Order Details

Given the trader selects an order,
when the order details are displayed,
then the system should show the order ID, equity, order type, quantity, price, and order status.

AC-04 – Status Update

Given an order status changes,
when the updated status is received by the system,
then the system should display the latest available order status.

AC-05 – Rejected Order

Given an order is rejected,
when the trader views the order,
then the system should display the rejected status and the applicable rejection reason where available.

AC-06 – Order History

Given the trader has multiple orders,
when the trader opens the order book,
then the system should allow the trader to review previously submitted orders.

Business Rules

- Every submitted order must have a unique order ID.
- Order status must reflect the latest available status from the trading system.
- Rejected orders should have an appropriate rejection reason where available.
- Order history should be accessible to the authorized trader.

Expected Business Value

This functionality provides transparency into the order lifecycle and enables traders to monitor their trades and take appropriate action.
