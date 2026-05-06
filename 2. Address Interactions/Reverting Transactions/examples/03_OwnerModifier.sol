// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Create onlyOwner modifier
- Restrict config functions to owner only
*/

contract OwnerModifier {
    uint configA;
    uint configB;
    uint configC;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setA(uint _a) public onlyOwner {
        configA = _a;
    }

    function setB(uint _b) public onlyOwner {
        configB = _b;
    }

    function setC(uint _c) public onlyOwner {
        configC = _c;
    }
}