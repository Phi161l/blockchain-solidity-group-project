# 🧠 Structs in Solidity — Notes

## What are Structs?

* Structs are **custom data types**
* Used to group related data together
* Example: combining `choice` + `voter` into one object

---

## Storage vs Memory Structs

* `storage` → permanently saved on blockchain
* `memory` → temporary (used inside functions)

---

## Struct in Arrays

* Structs can be stored in arrays
* Used to manage multiple records (e.g., votes list)

---

## Common Operations

* `push()` → add new struct to array
* Update struct fields using index
* Loop through array to search data

---

## Data Lookup

* Can search structs using loops
* Example:

  * check if user voted
  * find user's choice

---

## Constraints / Rules

* Prevent duplicate actions (e.g., only one vote per user)
* Use `require()` for validation
* Use `revert()` when data not found

---

## State Updates

* Struct data can be updated directly in storage
* Example: changing a vote choice

---

## Practice Concepts

* Created Vote struct (choice + voter)
* Stored single and multiple votes
* Checked existence of user vote
* Implemented vote update system
* Built simple on-chain voting logic

---

## One-line Summary

Structs allow grouping related data and building real-world systems like voting inside smart contracts.
