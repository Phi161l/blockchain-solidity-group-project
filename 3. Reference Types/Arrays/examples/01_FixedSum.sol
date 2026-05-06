// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Take fixed array of 5 uints
- Return sum of all elements
*/

contract Contract {
    function sum(uint[5] memory nums) external pure returns (uint) {
        uint total = 0;

        for (uint i = 0; i < 5; i++) {
            total += nums[i];
        }

        return total;
    }
}