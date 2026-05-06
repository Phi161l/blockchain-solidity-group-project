// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Create Vote struct (choice + voter)
- Store a single vote in state
*/

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote public vote;

    function createVote(Choices choice) external {
        vote = Vote(choice, msg.sender);
    }
}