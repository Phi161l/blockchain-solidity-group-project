// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Store deployer as owner
- Only owner can withdraw all funds
- Others must revert
*/

contract OnlyOwner {
    address public owner;

    constructor() payable {
        require(msg.value >= 1 ether, "Must send at least 1 ETH");
        owner = msg.sender;
    }

    function withdraw() public {
        require(msg.sender == owner, "Not owner");

        (bool success, ) = owner.call{ value: address(this).balance }("");
        require(success);
    }
}