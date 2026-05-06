// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Send calldata that does NOT match any function
so Hero fallback() is triggered
*/

contract Sidekick {
    function makeContact(address hero) external {
        (bool success, ) = hero.call(
            abi.encodeWithSignature("nonExistentFunction()")
        );

        require(success);
    }
}