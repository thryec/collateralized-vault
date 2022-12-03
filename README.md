# Collateralized Vault

https://github.com/yieldprotocol/mentorship2022/issues/5

## Objectives

Users can deposit an asset they own (collateral), to borrow a different asset that the contract owns (underlying). The exchange rate will be determined by an oracle, and if the value of the collateral drops in underlying terms, the user will be liquidated. We will use Wrapped Ether as the collateral, and DAI as the underlying

1. Users can deposit WETH in the Collateralized Vault. WETH is transfered from the user to the Vault, Vault records the amount of WETH the user has deposited.
2. Users can borrow DAI against their WETH, as long as the value DAI they borrow in WETH terms is less than the value of their WETH collateral.
3. When borrowing, the Collateral Vault sends DAI to the users. The contract owner supplies DAI to the contract on construction.
4. Use a Chainlink Oracle to obtain ETH/DAI exchange rate
5. Users can repay their debt with DAI.
6. Users can withdraw their WETH collateral. If they have a debt, they can't withdraw WETH in a way that makes the value of their collateral drop below the value of their debt.
7. To withdraw their Ether, the users must repay the DAI they borrowed.
8. If the ETH/DAI price changes such that the value of the debt of an user is more than the value of their collateral, the contract owner can erase the user records from the contract, cancel the user debt, and stop that user from withdrawing their collateral.

## Functions

`deposit()`

`borrow()`

`repay()`

`liquidate()`

`getPrice()`
