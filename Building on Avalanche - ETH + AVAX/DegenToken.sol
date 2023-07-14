
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner{
            _mint(to, amount);
        }
        function transferTokens(address _reciever, uint amount) external{
            require(balanceOf(msg.sender) >= amount, "you are not owner");
            approve(msg.sender, amount);
            transferFrom(msg.sender, _reciever, amount);
        }
        function checkBalance() external view returns(uint){
           return balanceOf(msg.sender);
        }
        function burnTokens(uint amount) external{
            require(balanceOf(msg.sender)>= amount, "You do not have enough Tokens");
            _burn(msg.sender, amount);
        }
        function gameStore() public pure returns(string memory) {
            return "1. ProPlayer NFT value = 200 \n 2. SuperNinja value = 100 /n 3. DegenCap value = 75";
        }
        function reedemTokens(uint choice) external payable{
            require(choice<=3,"Invalid selection");
            if(choice ==1){
                require(balanceOf(msg.sender)>=200, "Insufficient Balance");
                approve(msg.sender, 200);
                transferFrom(msg.sender, owner(), 200);
            }
            else if(choice ==2){
                require(balanceOf(msg.sender)>=100, "Insufficient Balance");
                approve(msg.sender, 100);
                transferFrom(msg.sender, owner(), 100);
            }
            else{
                require(balanceOf(msg.sender)>=75, "Insufficient Balance");
                approve(msg.sender, 75);
                transferFrom(msg.sender, owner(), 75);
            }


        }

}

