// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Constructor must be payable
- Require at least 1 ether or revert
*/

contract ConstructorRevert {
    constructor() payable {
        require(msg.value >= 1 ether, "Must send at least 1 ETH");
    }
}