// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.2/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";

contract Degen is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Degen", "DGN") {}

    function Mint_Token (address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function Transfer_Tokens (address _reciever, uint256 amount) external{
        require (balanceOf(msg.sender) >= amount, "You are not Owner");
        approve(msg.sender, amount);
        transferFrom(msg.sender, _reciever, amount);
    }
    function Check_Balance() external view returns (uint256){
        return balanceOf(msg.sender);
    }
    function Burn_Tokens (uint256 amount) external {
        require (balanceOf(msg.sender) >= amount, "You do not have enough Tokens"); 
        _burn(msg.sender, amount);
    }
    function Game_Store() public pure returns (string memory){
        return "1. ProPlayer NFT value = 100 \n 2. SuperNinja value = 200 /n 3. DegenCap value = 300";
    }
    function ReedemTokens (uint256 choice) external payable{
        require (choice<=3, "Selection is Invalid");
        if (choice == 1){
            require (balanceOf(msg.sender) >= 100, "You do not have enough Balance");
            approve (msg.sender, 100);
            transferFrom (msg.sender, owner(), 100);
        }
        else if (choice == 2){
            require (balanceOf(msg.sender) >= 200, "You do not have enough Balance");
            approve (msg.sender, 200);
            transferFrom (msg.sender, owner(), 200);
        }
        else{
            require (balanceOf(msg.sender) >= 300, "You do not have enough Balance");
            approve (msg.sender, 300);
            transferFrom (msg.sender, owner(), 300);
        }
    }
}
