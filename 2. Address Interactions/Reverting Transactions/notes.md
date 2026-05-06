# 🧠 Reverting Transactions — Notes

## What is Revert?

* Revert = cancel a transaction when a condition fails
* All state changes are undone
* Used to enforce rules and security

---

## require()

* Checks conditions before execution
* Syntax: `require(condition, "error message")`
* If false → transaction stops and reverts

---

## Payable + Validation

* Constructors/functions can be `payable` to receive ETH
* Use `require(msg.value >= amount)` to enforce payments

---

## Access Control

* Store contract owner using `msg.sender`
* Restrict sensitive actions (like withdraw)

---

## Modifiers

* Reusable logic applied before functions
* Example: `onlyOwner`
* `_` = where function body executes

---

## Practice Concepts

* Required minimum ETH in constructor
* Restricted withdrawals to owner only
* Created `onlyOwner` modifier
* Protected config functions (`setA`, `setB`, `setC`)
* Used `.call` safely with `require(success)`

---

## One-line Summary

Reverting transactions ensures invalid actions are blocked using require, access control, and modifiers.
