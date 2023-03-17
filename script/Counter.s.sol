// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Script.sol";

import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter public counter;

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY_DEPLOYER_OPTIMISM");
        vm.broadcast(deployerPrivateKey);

        counter = new Counter(address(123));
        vm.stopBroadcast();
    }
}
