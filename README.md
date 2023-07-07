# Metacrafters Project 

This repository contains the source code for the `MyContract` smart contract. The contract is written in Solidity version 0.8.0 and implements the `withdraw` function with require, assert, and revert statements, along with the `getContractBalance` function.

## Prerequisites

Before running the smart contract, make sure you have the following prerequisites installed:

- Solidity compiler (version 0.8.0)
- Ethereum development environment (e.g., Remix, Truffle, Hardhat)

## Getting Started

Follow the steps below to get started with the `MyContract` smart contract:

1. Clone this repository to your local machine.
2. Open the project in your preferred Ethereum development environment.
3. Compile the smart contract using the Solidity compiler.
4. Deploy the contract to your preferred Ethereum network.
5. Interact with the contract using the provided functions.

## Contract Details

### Description

The `MyContract` contract allows the contract owner to withdraw funds from the contract balance. The contract owner is set during the contract deployment.

### Functions

#### `constructor()`

The constructor function is executed once during contract deployment. It sets the contract owner to the address of the message sender.

#### `withdraw(uint amount)`

The `withdraw` function allows the contract owner to withdraw a specified amount of funds from the contract balance. It includes several checks using require statements to ensure the withdrawal conditions are met:
- The amount must be greater than zero.
- The contract balance must be equal to or greater than the requested amount.

If the require conditions are satisfied, the function attempts to transfer the funds to the message sender using the `call` function. The `assert` statement checks if the transfer was successful. If the transfer fails, the function reverts with an error message using the `revert` statement.

#### `getContractBalance()`

The `getContractBalance` function is a view function that returns the current balance of the contract.

## Usage

To use the `MyContract` smart contract, follow these steps:

1. Deploy the contract by calling the constructor function.
2. As the contract owner, call the `withdraw` function and provide the amount to withdraw.
3. Verify that the withdrawal conditions are satisfied and the transfer is successful.
4. To check the current balance of the contract, call the `getContractBalance` function.

## License

This project is licensed under the MIT License. See the [LICENCE](https://github.com/Kayleexx/Metacrafters-assessments/blob/main/ETH%20%2B%20AVAX%20PROOF/Project/LICENCE) file for details.

## Credits

This project is a solution to the project task provided by MetaCrafters.
