// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library ExtLib {
    uint256 public constant a = 5;

    function aPlusB(uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
