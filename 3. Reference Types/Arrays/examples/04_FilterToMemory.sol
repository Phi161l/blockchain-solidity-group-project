// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
TASK:
- Filter even numbers into memory array
- Return only even numbers (correct sized array)
*/

contract Contract {
    function filterEven(uint[] calldata nums) external pure returns (uint[] memory) {
        uint count = 0;

        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                count++;
            }
        }

        uint[] memory result = new uint[](count);

        uint index = 0;
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                result[index] = nums[i];
                index++;
            }
        }

        return result;
    }
}