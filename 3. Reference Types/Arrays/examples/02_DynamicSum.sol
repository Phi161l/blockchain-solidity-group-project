// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Take dynamic uint array
- Return sum of all elements
*/

contract Contract {
    function sum(uint[] calldata nums) external pure returns (uint) {
        uint total = 0;

        for (uint i = 0; i < nums.length; i++) {
            total += nums[i];
        }

        return total;
    }
}