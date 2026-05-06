// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Transfer internal balances between users
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

    function transfer(address to, uint amount) external {
        User storage sender = users[msg.sender];
        User storage receiver = users[to];

        require(sender.isActive, "Sender not active");
        require(receiver.isActive, "Receiver not active");
        require(sender.balance >= amount, "Not enough balance");

        sender.balance -= amount;
        receiver.balance += amount;
    }
}