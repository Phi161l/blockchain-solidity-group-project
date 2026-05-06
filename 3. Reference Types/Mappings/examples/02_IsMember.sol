// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Return membership status using mapping lookup
*/

contract Contract {
    mapping(address => bool) public members;

    function addMember(address user) external {
        members[user] = true;
    }

    function isMember(address user) external view returns (bool) {
        return members[user];
    }
}