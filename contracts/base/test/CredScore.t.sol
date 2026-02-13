// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "forge-std/Test.sol";
import "../src/CredScore.sol";

contract CredScoreTest is Test {
    CredScore public c;
    
    function setUp() public {
        c = new CredScore();
    }

    function testDeployment() public {
        assertTrue(address(c) != address(0));
    }
}
