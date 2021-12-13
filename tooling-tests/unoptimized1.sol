//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Unoptimized */
contract Unoptimized1 {
    function factorial(uint n) internal pure returns(uint) {
        if (n == 1) return n;
        return n * factorial(n - 1);
    }
    function run() external {
        factorial(15);
    }
}