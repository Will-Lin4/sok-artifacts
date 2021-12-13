//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract DeploymentOptimized {
    function run() external {
    	doSomething();
    	doSomething();
    }

    function doSomething() internal {
    	uint i = 0;
    	uint j = 0;
    	while (i < 10) {
    		j += i;
    		i++;
    	}
    }

    function getFibonacci(uint n) external returns (uint) {
    	uint curr = 0;
    	uint next = 1;
	    for (uint i = 0; i < n; i++) {
	    	uint new_curr = next;
	        next = curr + next;
	        curr = new_curr;
	    }
	    return curr;
    }
}
