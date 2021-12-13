//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Optimized */
contract Optimized3 {
    mapping(uint256 => bool) public contains;

    function run() external {
        // Generate a test array containing elements [0, 1, ..., n - 1]
        uint256 n = 200;
        uint256[] memory test = new uint256[](n);
        for (uint256 i = 0; i < n; i++) {
            test[i] = i;
        }

        // Test twoSum to find the last two elements in the test array
        twoSum(test, n + n - 2);
    }

    // Returns true if two elements in A sum to target
    // Time Complexity: O(N) - one loop over A
    // Space Complexity: O(N) - one entry in mapping per element in A
    function twoSum(uint256[] memory a, uint256 target) internal returns (bool result) {
        for (uint256 i = 0; i < a.length; i++) {
            if (contains[target - i] == true) {
                return true;
            }
            contains[i] = true;
        }
        return false;
    }
}