// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- a = uint8 (0–255)
- b = uint16 (>= 256)
- sum = uint256 (a + b)
*/

contract UnsignedIntegers {
    uint8 public a = 10;
    uint16 public b = 300;
    uint256 public sum = uint256(a) + uint256(b);
}