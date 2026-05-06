// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Each address can vote only once
*/

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote[] public votes;

    function createVote(Choices choice) external {
        for (uint i = 0; i < votes.length; i++) {
            require(votes[i].voter != msg.sender, "Already voted");
        }

        votes.push(Vote(choice, msg.sender));
    }
}