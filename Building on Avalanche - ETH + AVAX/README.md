# Metacrafters Project 

## Prerequisites

Before running the smart contract, make sure you have the following prerequisites installed:

## Getting Started

Follow the steps below to get started with the `DegenToken` smart contract:

1. Fork the starter template project
2. Create the ERC-20 token
   1. Set the name to “Degen”
   2. Set the symbol to “DGN”
3. Test the smart-contract (All tests should pass)
4. Deploy the contract to Avalanche Fuji Testnet
5. Test on testnet (All tests should pass)
6. Verify the smart-contract on Snowtrace
7. Share the smart-contract with us!

## Contract Details

- SPDX-License-Identifier: MIT
- Solidity Version: ^0.8.18

### Description
### DegenToken Contract

The DegenToken contract is an ERC20 token smart contract that enables various functionalities for players in the Degen Gaming platform. The contract is designed to provide the following features:

- Minting new tokens: The platform owner can create new tokens and distribute them as rewards to players. Only the contract owner has the authority to mint tokens.

- Transferring tokens: Players can transfer their tokens to others. They can initiate token transfers to any address by specifying the recipient and the amount of tokens they wish to transfer.

- Redeeming tokens: Players can redeem their tokens for items in the in-game store. The contract provides a list of available items that can be redeemed using the corresponding token values.

- Checking token balance: Players can check their token balance at any time by calling the `checkBalance` function. It returns the balance of tokens held by the caller's address.

- Burning tokens: Any token holder can burn their own tokens if they are no longer needed. The `burnTokens` function allows token holders to burn a specific amount of tokens from their own balance.


### Functions

### Mint_Token

```solidity
function Mint_Token(address to, uint256 amount) public onlyOwner
```

The `Mint_Token` function allows the contract owner to create new tokens and distribute them to specified addresses. It takes two parameters: `to` (the recipient's address) and `amount` (the number of tokens to mint). Only the contract owner can call this function.

### Transfer_Tokens

```solidity
function Transfer_Tokens(address _receiver, uint amount) external
```

The `Transfer_Tokens` function enables players to transfer their tokens to others. Players can initiate transfers by providing the recipient's address (`_receiver`) and the amount of tokens (`amount`) to transfer. This function requires that the caller has a sufficient balance of tokens.

### Check_Balance

```solidity
function Check_Balance() external view returns (uint)
```

The `Check_Balance` function allows players to check their token balance at any time. It returns the balance of tokens held by the caller's address.

### Burn_Tokens

```solidity
function Burn_Tokens(uint amount) external
```

The `Burn_Tokens` function enables any token holder to burn their own tokens if they are no longer needed. Token holders can specify the amount of tokens (`amount`) they wish to burn. The function requires that the caller has a sufficient balance of tokens.

### Game_Store

```solidity
function Game_Store() public pure returns (string memory)
```

The `Game_Store` function provides information about the available items in the in-game store. It returns a string with the options and their corresponding values. Players can choose from these items to redeem with their tokens.

### RedeemTokens

```solidity
function RedeemTokens(uint choice) external payable
```

The `RedeemTokens` function allows players to redeem tokens for items in the in-game store. Players need to provide the `choice` parameter, representing the sequence number of the desired item to redeem. The function checks the player's token balance and verifies if it is sufficient for the selected item. If the conditions are met, it transfers the corresponding token value to the contract owner.


## License

This project is licensed under the MIT License. See the [LICENCE](https://github.com/21BCS7009/MetacrafterETH-AVAXPROOF/blob/main/LICENCE) file for details.

## Credits

This project is a solution to the project task provided by MetaCrafters.





