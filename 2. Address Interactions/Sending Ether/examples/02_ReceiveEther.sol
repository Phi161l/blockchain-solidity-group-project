// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Allow contract to receive ETH without calldata
*/

contract ReceiveEther {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}
}