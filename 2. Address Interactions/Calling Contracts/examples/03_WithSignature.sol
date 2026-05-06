// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Call alert(uint256,bool)
using abi.encodeWithSignature
*/

contract Sidekick {
    function sendAlert(address hero, uint enemies, bool armed) external {
        (bool success, ) = hero.call(
            abi.encodeWithSignature("alert(uint256,bool)", enemies, armed)
        );

        require(success);
    }
}