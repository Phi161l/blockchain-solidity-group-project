// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Allow user to update their vote
- Must already exist
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

    function changeVote(Choices newChoice) external {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == msg.sender) {
                votes[i].choice = newChoice;
                return;
            }
        }

        revert("No vote found");
    }

    function findChoice(address user) external view returns (Choices) {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == user) {
                return votes[i].choice;
            }
        }

        revert("Not found");
    }
}