// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

/*
TASK:
Log the secret message using console.log
and return 794
*/

contract ConsoleLogExample {
    function winningNumber(string calldata secretMessage) external returns (uint) {
        console.log(secretMessage);
        return 794;
    }
}