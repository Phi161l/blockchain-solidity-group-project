# 🧠 Functions and Value Types — Notes

## Storage Variables

* Stored on the blockchain (persistent)
* Declared inside contracts
* Example: `uint public x;`
* Can be read and updated by functions

---

## Functions

* Define behavior of the contract
* Can modify or read data

Types:

* `external` → called from outside
* `public` → called inside & outside
* `view` → read-only (no state change)
* `pure` → no state access

---

## Practice Solidity Functions

* Used constructor to initialize variables
* Updated state using `increment()`
* Used `view` to return computed values
* Used `pure` for calculations only
* Practiced function overloading
* Used `console.log` for debugging (Foundry)

---

## One-line Summary

Functions control contract behavior by reading or modifying stored data using different function types.
