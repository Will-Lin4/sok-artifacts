//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Toy example to demonstrate normal boolean operations */
contract Unoptimized4 {
    /* Stores 256 bytes in storage */
    bool[256] attributes;

    function run() external {
        /* Initialize attributes */
        for (uint i = 0; i < 256; i++) {
            attributes[i] = (i % 3) == 0;
        }

        /* Read attributes */
        uint numTrue = 0;
        for (uint i = 0; i < 256; i++) {
            if (attributes[i]) {
                numTrue++;
            }
        }

        require(numTrue == 86);
    }
}