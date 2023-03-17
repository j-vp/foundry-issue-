// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ExtLib} from "./ExtLib.sol";

contract Counter {
    uint256 public number;
    address public someAddress;

    constructor (address someAddress_) {
        someAddress = someAddress_;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function getNum(uint256 b) public pure returns (uint256) {
        return ExtLib.aPlusB(b);
    }

    function increment() public {
        number++;
    }
}
