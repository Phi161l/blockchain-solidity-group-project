// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Modify donate() to selfdestruct
- Send all funds to charity
*/

contract SelfDestructExample {
    address public owner;
    address public charity;

    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    receive() external payable {}

    function tip() public payable {
        (bool success, ) = owner.call{ value: msg.value }("");
        require(success);
    }

    function donate() public {
        selfdestruct(payable(charity));
    }
}