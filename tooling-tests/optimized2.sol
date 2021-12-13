//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

/* Optimized */
contract Optimized2 {
    function run() external {
    	uint i = 0;
    	uint j = 0;
    	while (i < 10) {
    		j += i;
    		i++;
    	}

    	i = 0;
    	j = 0;
    	while (i < 10) {
    		j += i;
    		i++;
    	}
    }

    function getFibonacci(uint n) external returns (uint) {
    	uint[20] memory precomputed = [uint(0), 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181];
    	if (n < 20) {
    		return precomputed[n];
    	}
    	uint curr = precomputed[18];
    	uint next = precomputed[19];
	    for (uint i = 18; i < n; i++) {
	    	uint new_curr = next;
	        next = curr + next;
	        curr = new_curr;
	    }
	    return curr;
    }
}