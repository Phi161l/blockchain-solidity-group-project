// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Store arbiter + beneficiary from constructor
- depositor = deployer (msg.sender)
*/

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _arbiter, address _beneficiary) {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }
}