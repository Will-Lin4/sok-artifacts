//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Spans 256 bits */
struct Unpacked {
    bool number;
}

contract NoPacking {
    Unpacked[256] attributes;

    function run() external {
        /* Initialize attributes */
        for (uint i = 0; i < 256; i++) {
            attributes[i].number = (i % 3) == 0;
        }

        /* Read attributes */
        uint numTrue = 0;
        for (uint i = 0; i < 256; i++) {
            if (attributes[i].number) {
                numTrue++;
            }
        }

        require(numTrue == 86);

    }
}
