// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}

        function Mint_Token(address to, uint256 amount) public onlyOwner{
            _mint(to, amount);
        }
        function Transfer_Tokens(address _reciever, uint amount) external{
            require(balanceOf(msg.sender) >= amount, "you are not Owner");
            approve(msg.sender, amount);
            transferFrom(msg.sender, _reciever, amount);
        }
        function Check_Balance() external view returns(uint){
           return balanceOf(msg.sender);
        }
        function Burn_Tokens(uint amount) external{
            require(balanceOf(msg.sender)>= amount, "You do not have enough Tokens");
            _burn(msg.sender, amount);
        }
        function Game_Store() public pure returns(string memory) {
            return "1. ProPlayer NFT value = 1000 \n 2. SuperNinja value = 200 /n 3. DegenCap value = 300";
        }
        function ReedemTokens(uint choice) external payable{
            require(choice<=3,"Selection Is Invalid ");
            if(choice ==1){
                require(balanceOf(msg.sender)>=100, "You do not have enough Balance");
                approve(msg.sender, 100);
                transferFrom(msg.sender, owner(), 100);
            }
            else if(choice ==2){
                require(balanceOf(msg.sender)>=200, "You do not have enough Balance");
                approve(msg.sender, 200);
                transferFrom(msg.sender, owner(), 200);
            }
            else{
                require(balanceOf(msg.sender)>=300, "You do not have enough Balance");
                approve(msg.sender, 300);
                transferFrom(msg.sender, owner(), 300);
            }


        }

}
