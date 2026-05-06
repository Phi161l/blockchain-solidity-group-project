# 🧠 Calling Contracts (Calldata) — Notes

## Contract Interaction

* Contracts can call functions of other contracts
* Requires the target contract address

---

## Interface Calls

* Use interfaces to call functions safely
* Example: `IHero(hero).alert()`
* Clean and recommended approach

---

## Low-Level Calls

* Use `.call()` for flexible interaction
* Syntax: `address.call(data)`
* Returns `(success, data)`
* Must check with `require(success)`

---

## Function Selector

* First 4 bytes of function hash
* Generated using `keccak256("functionName(types)")`
* Used for manual calls

---

## Encoding Data

* `abi.encodeWithSignature()` → encode function + params
* `abi.encodePacked()` → pack raw bytes
* Used to build calldata

---

## Raw Calldata

* Can forward arbitrary bytes to another contract
* Useful for proxies and relayers

---

## Fallback Function

* Triggered when function does not exist
* Handles unknown calldata

---

## Practice Concepts

* Called contract using interface
* Used manual function selector
* Encoded function calls with parameters
* Forwarded raw calldata
* Triggered fallback function

---

## One-line Summary

Contracts interact by sending encoded calldata using interfaces or low-level calls like call().
