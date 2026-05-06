// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
PROBLEM:
- Hero.attack() now contains logic (e.g., energy reduction)
- Keep your custom attack logic
- ALSO call parent function using super
*/

import "./Hero.sol";

contract Mage is Hero(50) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(AttackTypes.Spell);
        super.attack(enemy);
    }
}

contract Warrior is Hero(200) {
    function attack(Enemy enemy) public override {
        enemy.takeAttack(AttackTypes.Brawl);
        super.attack(enemy);
    }
}