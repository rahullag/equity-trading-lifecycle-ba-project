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

User Story 5 – Order Cancellation

Story ID: US-005
Epic: Order Management
Priority: High

User Story

As a Trader, I want to cancel an eligible open order, so that I can prevent an unwanted order from being executed.

Acceptance Criteria

AC-01 – Cancel Option

Given the trader has an eligible open order,
when the trader selects the order,
then the system should provide a cancellation option.

AC-02 – Cancellation Confirmation

Given the trader selects cancel,
when the cancellation request is initiated,
then the system should ask the trader to confirm the cancellation.

AC-03 – Successful Cancellation

Given the order is eligible for cancellation,
when the trader confirms the cancellation,
then the system should send the cancellation request and update the order status accordingly.

AC-04 – Ineligible Order

Given an order has already been fully executed,
when the trader attempts to cancel it,
then the system should prevent cancellation and display an appropriate message.

AC-05 – Cancellation Failure

Given the cancellation request cannot be processed,
when the trader attempts to cancel the order,
then the system should display the cancellation failure reason where available.

AC-06 – Order History

Given an order has been cancelled,
when the trader views the order history,
then the system should display the order with a Cancelled status.

Business Rules

- Only eligible open orders can be cancelled.
- Fully executed orders cannot be cancelled.
- The system must record the cancellation event.
- Cancelled orders must remain available in order history.

Expected Business Value

This functionality allows traders to manage open orders effectively and reduces the risk of unintended trade execution.

User Story 6 – Portfolio View

Story ID: US-006
Epic: Portfolio Management
Priority: High

User Story

As an Investor, I want to view my current equity holdings and portfolio value, so that I can monitor my investments and overall portfolio position.

Acceptance Criteria

AC-01 – View Holdings

Given the investor has equity holdings,
when the investor opens the portfolio,
then the system should display the securities currently held.

AC-02 – Holding Details

Given a security is available in the portfolio,
when the investor views the holding,
then the system should display the security name, quantity, average purchase price, and current market price.

AC-03 – Portfolio Value

Given current market prices are available,
when the investor views the portfolio,
then the system should calculate and display the current portfolio value.

AC-04 – Portfolio Allocation

Given the investor has multiple securities,
when the portfolio is displayed,
then the system should provide the allocation of holdings based on the configured calculation method.

AC-05 – No Holdings

Given the investor does not have any equity holdings,
when the investor opens the portfolio,
then the system should display an appropriate message indicating that no holdings are available.

AC-06 – Data Update

Given market prices or holdings change,
when updated information becomes available,
then the portfolio should reflect the latest available information.

Business Rules

- Portfolio holdings should be linked to the investor's account.
- Current portfolio value should be based on the latest available market price.
- Only authorized users should be able to view portfolio information.
- Portfolio calculations must use consistent and defined calculation rules.

Expected Business Value

This functionality provides investors with a consolidated view of their holdings and portfolio value, enabling better investment monitoring and decision-making.

User Story 7 – Profit & Loss Calculation

Story ID: US-007
Epic: Portfolio Management
Priority: High

User Story

As an Investor, I want to view the profit or loss of my equity holdings, so that I can understand the performance of my investments.

Acceptance Criteria

AC-01 – Calculate Unrealized P&L

Given the investor holds an equity,
when the current market price is available,
then the system should calculate the unrealized profit or loss based on the holding's average purchase price and current market price.

AC-02 – Display P&L Amount

Given a profit or loss has been calculated,
when the investor views the portfolio,
then the system should display the P&L amount for each holding.

AC-03 – Display P&L Percentage

Given the required price and quantity information is available,
when the system calculates P&L,
then the system should display the corresponding P&L percentage.

AC-04 – Total Portfolio P&L

Given the investor has multiple holdings,
when the investor views the portfolio summary,
then the system should display the total portfolio profit or loss.

AC-05 – Realized P&L

Given the investor has completed a sell transaction,
when the transaction is recorded,
then the system should calculate the realized profit or loss according to the configured calculation method.

AC-06 – Updated Calculation

Given the market price changes,
when updated market data becomes available,
then the unrealized P&L should be recalculated using the latest available price.

Business Rules

- P&L calculations must use the defined cost-basis methodology.
- Unrealized P&L is based on the current market price.
- Realized P&L is calculated for completed sell transactions.
- P&L percentage must use a consistently defined calculation formula.
- Only authorized users should be able to view portfolio P&L.

Expected Business Value

This functionality helps investors monitor investment performance and understand both realized and unrealized gains or losses across their portfolio.

User Story 8 – Trade Confirmation

Story ID: US-008
Epic: Trade Processing
Priority: High

User Story

As a Trader, I want to receive confirmation when my order is executed, so that I have a clear record of the completed trade.

Acceptance Criteria

AC-01 – Trade Execution

Given an order has been successfully executed,
when the execution is received by the trading system,
then the system should create a trade confirmation.

AC-02 – Confirmation Details

Given a trade confirmation has been generated,
when the trader views the confirmation,
then the system should display the trade ID, order ID, security, buy/sell side, quantity, execution price, and execution date/time.

AC-03 – Partial Execution

Given an order is partially executed,
when the partial execution is received,
then the system should record the executed quantity and update the remaining quantity.

AC-04 – Trade Record

Given a trade has been executed,
when the trade is processed successfully,
then the system should store the trade record for future reference.

AC-05 – Confirmation Availability

Given a trade has been completed,
when the trader opens the trade history,
then the corresponding trade confirmation should be available.

AC-06 – Failed Processing

Given a trade confirmation cannot be generated,
when the system encounters a processing failure,
then the system should record the error and notify the appropriate process or user.

Business Rules

- Every executed trade must have a unique trade ID.
- Trade confirmation details must match the executed trade.
- Partial executions must be recorded separately or according to the configured trade-processing rules.
- Trade records must be retained according to applicable business and regulatory requirements.

Expected Business Value

This functionality provides an auditable record of executed trades and gives traders clear confirmation of their completed transactions.

User Story 9 – Transaction History

Story ID: US-009
Epic: Trade Processing
Priority: High

User Story

As an Investor, I want to view my transaction history, so that I can review my previous trading activities and transactions.

Acceptance Criteria

AC-01 – View Transactions

Given the investor has completed transactions,
when the investor opens transaction history,
then the system should display the available transaction records.

AC-02 – Transaction Details

Given a transaction is displayed,
when the investor views the transaction,
then the system should show the transaction ID, security, buy/sell side, quantity, price, date, and transaction status.

AC-03 – Filter Transactions

Given the investor has multiple transactions,
when the investor applies filters such as date, security, or transaction type,
then the system should display only matching transactions.

AC-04 – Transaction Search

Given transaction records are available,
when the investor searches using a supported transaction identifier or security,
then the system should display the relevant transaction records.

AC-05 – No Matching Records

Given no transaction matches the selected search or filter criteria,
when the investor performs the search,
then the system should display an appropriate message.

AC-06 – Transaction Details

Given the investor selects a specific transaction,
when the transaction details are opened,
then the system should display the complete available transaction information.

Business Rules

- Transaction records must be associated with the appropriate investor account.
- Only authorized users should be able to access transaction history.
- Transaction records must not be modified without appropriate authorization and audit controls.
- Historical transactions should be retained according to applicable business and regulatory requirements.

Expected Business Value

This functionality enables investors to review their trading activity, support portfolio analysis, and maintain a clear historical record of transactions.
