// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Create a pure function double(uint)
that returns x * 2
*/

contract PureDoubleExample {
    function double(uint x) external pure returns (uint) {
        return x * 2;
    }
}