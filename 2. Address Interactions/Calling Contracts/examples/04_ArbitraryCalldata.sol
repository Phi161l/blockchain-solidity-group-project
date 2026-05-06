// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
Forward raw calldata (bytes data)
to Hero contract using call
*/

contract Sidekick {
    function relay(address hero, bytes memory data) external {
        (bool success, ) = hero.call(data);
        require(success);
    }
}