// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {SimpleBank} from "../src/SimpleBank.sol";

contract SimpleBankScript is Script {
    SimpleBank sb;

    function run() public {
        vm.startBroadcast();

        sb = new SimpleBank();
        console.log("contract deployed :  ", address(sb));

        vm.stopBroadcast();
    }
}
