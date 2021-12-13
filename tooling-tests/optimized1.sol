//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Optimized */
contract Optimized1 {
    function factorial(uint64 n) internal pure returns(uint64) {
        uint64 result = 1;
        do {
            result *= n--;
        } while (n > 0);
        return result;
    }
    function run() external {
        factorial(15);
    }
}