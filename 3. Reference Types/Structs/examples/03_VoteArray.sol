// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Store multiple votes in array
*/

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote[] public votes;

    function createVote(Choices choice) external {
        votes.push(Vote(choice, msg.sender));
    }
}