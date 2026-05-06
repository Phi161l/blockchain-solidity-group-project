// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- msg1 = bytes32 "Hello World"
- msg2 = string (>32 bytes)
*/

contract StringLiterals {
    bytes32 public msg1 = "Hello World";
    string public msg2 = "This is a very long string that exceeds thirty two bytes easily";
}