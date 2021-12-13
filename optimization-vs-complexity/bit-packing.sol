//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract BitPacking {
    /* Stores 32 bytes in storage */
    uint256 attributes;

    function run() external {
        /* Initialize attributes */
        for (uint i = 0; i < 256; i++) {
            if (i % 3 == 0) {
                attributes |= (1 << i);
            } else {
                attributes &= ~(1 << i);
            }
        }

        /* Read attributes */
        uint numTrue = 0;
        for (uint i = 0; i < 256; i++) {
            if (((attributes >> i) & 1) == 1) {
                numTrue++;
            }
        }

        require(numTrue == 86);
    }
}
