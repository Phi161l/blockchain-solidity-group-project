// Execute


// PROBLEM:
// When yesCount >= 10:
// - execute proposal by calling target with stored calldata
// - prevent double execution

pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
        bool executed;
    }

    Proposal[] public proposals;

    mapping(address => bool) public members;

    constructor(address[] memory allowed) {
        members[msg.sender] = true;
        for (uint i = 0; i < allowed.length; i++) {
            members[allowed[i]] = true;
        }
    }

    modifier onlyMember() {
        require(members[msg.sender], "Not a member");
        _;
    }

    function newProposal(address target, bytes calldata data)
        external
        onlyMember
    {
        proposals.push(Proposal(target, data, 0, 0, false));
    }

    function castVote(uint proposalId, bool support)
        external
        onlyMember
    {
        Proposal storage p = proposals[proposalId];

        require(!p.executed, "Already executed");

        if (support) p.yesCount++;
        else p.noCount++;

        if (p.yesCount >= 10 && !p.executed) {
            p.executed = true;

            (bool success, ) = p.target.call(p.data);
            require(success);
        }
    }
}