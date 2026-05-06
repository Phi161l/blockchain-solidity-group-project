// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Deployer is first member
- Only members can add/remove
- removeLastMember uses pop()
*/

contract StackClub {
    address[] public members;

    constructor() {
        members.push(msg.sender);
    }

    function isMember(address user) public view returns (bool) {
        for (uint i = 0; i < members.length; i++) {
            if (members[i] == user) {
                return true;
            }
        }
        return false;
    }

    function addMember(address newMember) external {
        require(isMember(msg.sender), "Not a member");
        members.push(newMember);
    }

    function removeLastMember() external {
        require(isMember(msg.sender), "Not a member");
        members.pop();
    }
}