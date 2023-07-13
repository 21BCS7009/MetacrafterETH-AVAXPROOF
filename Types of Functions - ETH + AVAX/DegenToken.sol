// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    address private owner;

    constructor() ERC20("degen token", "DEGEN TOKEN") {
        owner = msg.sender;
    }

    modifier Owner() {
        require(msg.sender == owner, "Owner can perform action");
        _;
    }

    function mint_Token(address account, uint256 amount) public Owner {
        _mint(account, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function redeem_Token(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    function burn_Token(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}