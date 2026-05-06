// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Make constructor payable so ETH can be sent at deployment
*/

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    constructor(address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }
}