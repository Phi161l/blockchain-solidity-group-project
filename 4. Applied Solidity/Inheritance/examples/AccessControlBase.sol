// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
PROBLEM:
- Create a base contract for ownership control
- Store deployer as owner
- Create modifier onlyOwner
- Restrict functions in child contracts
*/

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
}