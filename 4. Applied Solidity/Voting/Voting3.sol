// Multiple Votes


// PROBLEM:
// Allow users to change their vote
// Adjust counts correctly when switching vote

pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;

    mapping(uint => mapping(address => bool)) public voted;
    mapping(uint => mapping(address => bool)) public choice;

    function newProposal(address target, bytes calldata data) external {
        proposals.push(Proposal(target, data, 0, 0));
    }

    function castVote(uint proposalId, bool support) external {
        Proposal storage p = proposals[proposalId];

        if (!voted[proposalId][msg.sender]) {
            voted[proposalId][msg.sender] = true;
            choice[proposalId][msg.sender] = support;

            if (support) p.yesCount++;
            else p.noCount++;
        } else {
            if (choice[proposalId][msg.sender] == support) return;

            if (choice[proposalId][msg.sender]) {
                p.yesCount--;
                p.noCount++;
            } else {
                p.noCount--;
                p.yesCount++;
            }

            choice[proposalId][msg.sender] = support;
        }
    }
}