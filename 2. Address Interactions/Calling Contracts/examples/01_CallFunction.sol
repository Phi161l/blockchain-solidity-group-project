// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHero {
    function alert() external;
}

/*
TASK:
Call alert() on the Hero contract using an interface
*/

contract Sidekick {
    function sendAlert(address hero) external {
        IHero(hero).alert();
    }
}