// proposal


// PROBLEM:
// Store proposals that contain:
// - target address
// - calldata (bytes)
// - yes/no vote counts initialized to 0
// Also store them in a public array.

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
        proposals.push(
            Proposal({
                target: target,
                data: data,
                yesCount: 0,
                noCount: 0
            })
        );
    }
}