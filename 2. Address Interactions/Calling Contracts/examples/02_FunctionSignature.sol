// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Manually call alert() using:
- keccak256("alert()")
- first 4 bytes as function selector
*/

contract Sidekick {
    function sendAlert(address hero) external {
        bytes4 signature = bytes4(keccak256("alert()"));

        (bool success, ) = hero.call(abi.encodePacked(signature));
        require(success);
    }
}