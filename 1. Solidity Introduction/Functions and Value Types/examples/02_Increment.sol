// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Create an external function increment
that increases x by 1
*/

contract IncrementExample {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x = x + 1;
    }
}