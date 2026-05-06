// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- a and b are int8 (one positive, one negative)
- difference = absolute difference
*/

contract SignedIntegers {
    int8 public a = 10;
    int8 public b = -15;
    int16 public difference = int16(a - b);
}