//  For this project, write a smart contract that implements the require(), assert() and revert() statements.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExceptionHandling {
    uint public balance;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint amount) public {
        require(amount > 0, "Invalid deposit amount");
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Invalid withdrawal amount");
        require(balance >= amount, "Insufficient balance");
        balance -= amount;
    }

    function assertExample() public pure returns (uint) {
        uint a = 10;
        uint b = 5;
        assert(a > b);
        return a - b;
    }

    function revertExample(uint x) public pure returns (uint) {
        if (x == 0) {
            revert("Cannot divide by zero");
        }
        return 10 / x;
    }
}
