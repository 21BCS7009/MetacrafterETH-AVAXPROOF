# Connecting Local Hardhat Network with Remix

Follow the steps below to connect your local Hardhat network with Remix and interact with a contract.

## Step 1: Navigate to Project Directory
Open your terminal and navigate to the project directory where your Solidity contract is located.

## Step 2: Run `remixd` Command
In the terminal, run the following command to start the `remixd` service:
```
cd ~/Directory/remixd
```
Replace `<project_directory>` with the absolute path to your project directory. This will create a connection between Remix IDE and your local project directory.

## Step 3: Open Remix IDE
Open your web browser and go to [Remix IDE](https://remix.ethereum.org).

## Step 4: Connect with Local Host
In Remix IDE, click on the "Connect to Localhost" button in the top-right corner. This will establish a connection to your local Hardhat network.

## Step 5: Create a Contract
In Remix IDE, click on the "+" button in the left panel to create a new file. Enter the Solidity code for your contract or `.sol` file in the editor.

Example Contract:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Token {
    // Contract code here...
}
```

## Step 6: Compile the Contract
In the Remix IDE, switch to the "Solidity Compiler" tab in the left panel. Click on the "Compile" button to compile the contract. Make sure the compiler version matches the pragma statement in your contract.

## Step 7: Deploy and Interact with the Contract
Switch to the "Deploy & Run Transactions" tab in the Remix IDE. From the "Environment" dropdown, select "Injected Web3" to connect to your local Hardhat network.

Click on the contract name under the "Deployed Contracts" section. You will see the contract's functions and variables. You can deploy the contract by clicking the "Deploy" button.

Once the contract is deployed, you can interact with its functions by entering the required parameters and clicking the respective function buttons.

Congratulations! You have successfully connected your local Hardhat network with Remix and deployed/interacted with a contract.

Note: Make sure your local Hardhat network is running (`npx hardhat node`) and that you have the necessary dependencies installed (`npm install`).

Please refer to the provided code and adjust it to meet your specific contract requirements. Add relevant information and code in a structured manner within the `Token` contract.

## Video Walkthrough

https://www.loom.com/share/56faefb9a47a4accae98ae6cc77b5385
