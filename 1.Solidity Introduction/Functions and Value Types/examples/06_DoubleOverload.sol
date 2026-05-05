// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Overload double function:
- one takes 1 param
- one takes 2 params
- return doubled values
*/

contract DoubleOverloadExample {
    function double(uint x) public pure returns (uint) {
        return x * 2;
    }

    function double(uint x, uint y) external pure returns (uint, uint) {
        return (x * 2, y * 2);
    }
}