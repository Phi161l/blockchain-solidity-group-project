// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Store members in array
- addMember() adds address
- isMember() checks existence
*/

contract StackClub {
    address[] public members;

    function addMember(address newMember) external {
        members.push(newMember);
    }

    function isMember(address user) public view returns (bool) {
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == user) {
                return true;
            }
        }
        return false;
    }
}