// Events


// PROBLEM:
// Emit events when proposals are created and votes are cast

pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    event ProposalCreated(uint proposalId);
    event VoteCast(uint proposalId, address voter);

    Proposal[] public proposals;

    function newProposal(address target, bytes calldata data) external {
        proposals.push(Proposal(target, data, 0, 0));
        emit ProposalCreated(proposals.length - 1);
    }

    function castVote(uint proposalId, bool support) external {
        Proposal storage p = proposals[proposalId];

        if (support) p.yesCount++;
        else p.noCount++;

        emit VoteCast(proposalId, msg.sender);
    }
}