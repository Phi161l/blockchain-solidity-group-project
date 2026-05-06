// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Create payable function `tip`
- Forward received ETH to owner
*/

contract TipOwner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}

    function tip() public payable {
        (bool success, ) = owner.call{ value: msg.value }("");
        require(success);
    }
}