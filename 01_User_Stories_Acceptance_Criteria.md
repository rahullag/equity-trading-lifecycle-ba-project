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
