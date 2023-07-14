# Metacrafters Project 

This repository contains the source code for the `myToken` smart contract. The contract is written in Solidity version 0.8.0 and implements the `write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it. From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.` function.

## Prerequisites

Before running the smart contract, make sure you have the following prerequisites installed:

- Solidity compiler (version 0.8.0)
- Ethereum development environment (e.g., Remix, Truffle, Hardhat)

## Getting Started

Follow the steps below to get started with the `myToken` smart contract:

1. Clone this repository to your local machine.
2. Open the project in your preferred Ethereum development environment.
3. Compile the smart contract using the Solidity compiler.
4. Deploy the contract to your preferred Ethereum network.
5. Interact with the contract using the provided functions.

## Contract Details

## Description

## Connecting Local Hardhat Network with Remix

Follow the steps below to connect your local Hardhat network with Remix and interact with a contract.

### Step 1: Navigate to Project Directory
Open your terminal and navigate to the project directory where your Solidity contract is located.

### Step 2: Run `remixd` Command
In the terminal, run the following command to start the `remixd` service:
```
cd ~/Directory/remixd
```
Replace `<project_directory>` with the absolute path to your project directory. This will create a connection between Remix IDE and your local project directory.

### Step 3: Open Remix IDE
Open your web browser and go to [Remix IDE](https://remix.ethereum.org).

### Step 4: Connect with Local Host
In Remix IDE, click on the "Connect to Localhost" button in the top-right corner. This will establish a connection to your local Hardhat network.

### Step 5: Create a Contract
In Remix IDE, click on the "+" button in the left panel to create a new file. Enter the Solidity code for your contract or `.sol` file in the editor.

Example Contract:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Token {
    // Contract code here...
}
```

### Step 6: Compile the Contract
In the Remix IDE, switch to the "Solidity Compiler" tab in the left panel. Click on the "Compile" button to compile the contract. Make sure the compiler version matches the pragma statement in your contract.

### Step 7: Deploy and Interact with the Contract
Switch to the "Deploy & Run Transactions" tab in the Remix IDE. From the "Environment" dropdown, select "Injected Web3" to connect to your local Hardhat network.

Click on the contract name under the "Deployed Contracts" section. You will see the contract's functions and variables. You can deploy the contract by clicking the "Deploy" button.

Once the contract is deployed, you can interact with its functions by entering the required parameters and clicking the respective function buttons.

Congratulations! You have successfully connected your local Hardhat network with Remix and deployed/interacted with a contract.

Note: Make sure your local Hardhat network is running (`npx hardhat node`) and that you have the necessary dependencies installed (`npm install`).

Please refer to the provided code and adjust it to meet your specific contract requirements. Add relevant information and code in a structured manner within the `Token` contract.


## Usage

To use the `myToken` smart contract, follow these steps:

1. A new token is created on the local HardHat network.
2. Only contract owner should be able to mint tokens.
3. Any user can transfer tokens.
4. Any user can burn tokens.

## License

This project is licensed under the MIT License. See the [LICENCE](https://github.com/21BCS7009/MetacrafterETH-AVAXPROOF/blob/main/LICENCE) file for details.

## Credits

This project is a solution to the project task provided by MetaCrafters.
