// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
TASK:
- Create a public address variable `owner`
- Store msg.sender in constructor
*/

contract StoreOwner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}