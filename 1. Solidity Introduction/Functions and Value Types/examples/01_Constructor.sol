// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Create a constructor that takes a uint
and stores it in public variable x
*/

contract ConstructorExample {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }
}