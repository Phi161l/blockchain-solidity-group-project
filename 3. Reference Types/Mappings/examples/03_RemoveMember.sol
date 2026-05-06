// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Remove member by setting mapping value to false
*/

contract Contract {
    mapping(address => bool) public members;

    function addMember(address user) external {
        members[user] = true;
    }

    function isMember(address user) external view returns (bool) {
        return members[user];
    }

    function removeMember(address user) external {
        members[user] = false;
    }
}