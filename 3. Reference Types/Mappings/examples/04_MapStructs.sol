// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Map address => struct User
- Create user once
- Assign 100 tokens
*/

contract Contract {
    struct User {
        uint balance;
        bool isActive;
    }

    mapping(address => User) public users;

    function createUser() external {
        require(!users[msg.sender].isActive, "User exists");

        users[msg.sender] = User({
            balance: 100,
            isActive: true
        });
    }
}