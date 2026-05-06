// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
PROBLEM:
- Hero contract now requires a constructor parameter (health)
- Set:
    Mage → 50 health
    Warrior → 200 health
- Pass values during inheritance
*/

import "./Hero.sol";

contract Mage is Hero(50) {

}

contract Warrior is Hero(200) {

}