// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Create an external view function add(uint)
that returns x + input
*/

contract ViewAdditionExample {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x = x + 1;
    }

    function add(uint _value) external view returns (uint) {
        return x + _value;
    }
}