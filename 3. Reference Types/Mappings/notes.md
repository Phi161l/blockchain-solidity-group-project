# 🧠 Mappings in Solidity — Notes

## What are Mappings?

* Key-value storage structure
* Syntax: `mapping(keyType => valueType)`
* Used for fast data lookup (no loops needed)

---

## Basic Usage

* Store relationships like:

  * address → bool (membership)
  * address → value (balance, status)

---

## Key Features

* Constant-time lookup (very fast)
* Cannot be iterated
* Keys must be known type (e.g. address)

---

## Add / Read / Remove

* Add: `mapping[key] = value`
* Read: `return mapping[key]`
* Remove: set value to default (e.g. `false` or `0`)

---

## Mappings with Structs

* Can store complex data:

  * `mapping(address => struct)`
* Used for user systems and accounts

---

## Nested Mappings

* Mapping inside mapping:

  * `mapping(address => mapping(address => type))`
* Used for relationships (friends, permissions)

---

## Transfers with Mappings

* Track balances in mapping
* Update sender and receiver balances
* Requires validation (balance checks)

---

## Important Rules

* No iteration over mappings
* Data is stored permanently in contract storage
* Always validate access and balances

---

## Practice Concepts

* Created membership system using mapping
* Checked and removed members
* Built user system with balances
* Implemented internal transfers
* Built nested relationship mapping

---

## One-line Summary

Mappings store and retrieve data efficiently using key-value pairs, forming the base of most blockchain state systems.
