// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
PROBLEM:
- Hero has abstract function attack()
- You must override it
- Call Enemy.takeAttack with:
    Mage → Spell
    Warrior → Brawl
*/

import "./Hero.sol";

contract Mage is Hero(50) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(AttackTypes.Spell);
    }
}

contract Warrior is Hero(200) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(AttackTypes.Brawl);
    }
}