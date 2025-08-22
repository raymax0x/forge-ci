// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {SimpleBank} from "../src/SimpleBank.sol";

contract SimpleBankTest is Test {
    SimpleBank sb;
    address alice;

    function setUp() public {
        sb = new SimpleBank();
        alice = makeAddr("alice");
    }

    function test_shouldAssertTrueAfterRegistration() public {
        vm.prank(alice);
        sb.register();
        assertTrue(sb.isRegistered(alice));
    }
}
