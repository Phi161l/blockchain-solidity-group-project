// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Store only even numbers from input into storage array
*/

contract Contract {
    uint[] public evenNumbers;

    function filterEven(uint[] calldata nums) external {
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                evenNumbers.push(nums[i]);
            }
        }
    }
}