# 🧠 Arrays in Solidity — Notes

## Fixed vs Dynamic Arrays

* Fixed: `uint[5]` → size known, cannot change
* Dynamic: `uint[]` → size can grow/shrink

---

## Memory vs Storage

* `memory` → temporary (function scope)
* `storage` → permanent (blockchain state)

---

## Iteration

* Use `for` loops to access elements
* Use `.length` for dynamic arrays

---

## Filtering Data

* Can filter elements using conditions (e.g., even numbers)
* For memory arrays:

  * First count valid elements
  * Then create correctly sized array

---

## Array Operations

* `push()` → add element
* `pop()` → remove last element

---

## Access Control with Arrays

* Arrays can store users (e.g., members)
* Loop used to check existence (`isMember`)

---

## Practice Concepts

* Summed fixed and dynamic arrays
* Filtered even numbers to storage and memory
* Used push/pop for stack behavior
* Built simple membership system with arrays

---

## One-line Summary

Arrays store and manage collections of data using memory/storage, loops, and operations like push and pop.
