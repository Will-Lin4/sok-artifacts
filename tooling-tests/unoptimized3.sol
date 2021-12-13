//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Unoptimized */
contract Unoptimized3 {
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
    // Time Complexity: O(N^2) - nested loop over A
    // Space Complexity: O(1) - no extra memory required
    function twoSum(uint256[] memory a, uint256 target) internal pure returns (bool result) {
        for (uint256 i = 0; i < a.length; i++) {
            for (uint256 j = i + 1; j < a.length; j++) {
                if (a[i] + a[j] == target) {
                    return true;
                }
            }
        }
        return false;
    }
}