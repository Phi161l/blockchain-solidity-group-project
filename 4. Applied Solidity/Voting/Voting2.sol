// Cast Vote


// PROBLEM:
// Allow members to vote YES or NO on a proposal
// Update yesCount / noCount accordingly

pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;

    function newProposal(address target, bytes calldata data) external {
        proposals.push(Proposal(target, data, 0, 0));
    }

    function castVote(uint proposalId, bool support) external {
        Proposal storage p = proposals[proposalId];

        if (support) {
            p.yesCount++;
        } else {
            p.noCount++;
        }
    }
}