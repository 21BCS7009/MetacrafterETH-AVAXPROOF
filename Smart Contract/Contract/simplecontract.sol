// SPDX-License-Identifier: MIT
pragma solidity ^0.4.17;

contract SimpleContract {
    uint256 public firstValue;
    uint256 public secondValue;

    function setValues(uint256 _first, uint256 _second) external {
        firstValue = _first;
        secondValue = _second;
    }

    function addValues() external view returns (uint256) {
        return firstValue + secondValue;
    }
}
