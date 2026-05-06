// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Create Approved event(uint amount)
- Emit it when escrow is approved
*/

contract Escrow {
    address public depositor;
    address public beneficiary;
    address public arbiter;

    event Approved(uint amount);

    constructor(address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }

    function approve() external {
        require(msg.sender == arbiter, "Not arbiter");

        uint amount = address(this).balance;

        (bool success, ) = beneficiary.call{ value: amount }("");
        require(success);

        emit Approved(amount);
    }
}