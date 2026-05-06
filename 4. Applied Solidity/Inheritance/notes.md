# 🧠 Inheritance in Solidity — Notes

## What is Inheritance?

* Allows a contract to reuse code from another contract
* Child contract inherits variables and functions from parent

---

## Basic Inheritance

* Use `is` keyword:

  * `contract Mage is Hero`
* Child gets all public/internal functionality

---

## Constructor Arguments

* Parent constructor can require parameters
* Pass values during inheritance:

  * `contract Mage is Hero(50)`

---

## Function Override

* Used when parent function is abstract or virtual
* Child must implement it using `override`
* Allows custom behavior in child contracts

---

## super Keyword

* Calls parent contract function
* Used to extend logic (not replace it)
* Example: run parent logic after custom logic

---

## Access Control (Ownable)

* Base contract stores `owner`
* Modifier `onlyOwner` restricts access
* Child contracts reuse this logic

---

## Multiple Inheritance

* A contract can inherit from another contract that already inherits
* Example: `Transferable is Ownable`
* Enables modular design

---

## Practice Concepts

* Created Mage and Warrior from Hero
* Passed constructor values (health)
* Overrode attack behavior
* Used `super` to extend logic
* Built reusable ownership system
* Added ownership transfer functionality

---

## One-line Summary

Inheritance lets contracts reuse and extend logic, enabling modular and scalable smart contract design.
